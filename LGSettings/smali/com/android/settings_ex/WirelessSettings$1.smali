.class Lcom/android/settings_ex/WirelessSettings$1;
.super Landroid/telephony/PhoneStateListener;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/WirelessSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/WirelessSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/settings_ex/WirelessSettings$1;->this$0:Lcom/android/settings_ex/WirelessSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 433
    if-eqz p1, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings$1;->this$0:Lcom/android/settings_ex/WirelessSettings;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings_ex/WirelessSettings;->csActive:Z

    .line 438
    :goto_0
    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings$1;->this$0:Lcom/android/settings_ex/WirelessSettings;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settings_ex/WirelessSettings;->csActive:Z

    goto :goto_0
.end method

.method public onDataActivity(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 442
    return-void
.end method