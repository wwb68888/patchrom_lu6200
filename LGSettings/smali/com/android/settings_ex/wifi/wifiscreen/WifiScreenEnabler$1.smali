.class Lcom/android/settings_ex/wifi/wifiscreen/WifiScreenEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiScreenEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/wifi/wifiscreen/WifiScreenEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/wifiscreen/WifiScreenEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/wifiscreen/WifiScreenEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/settings_ex/wifi/wifiscreen/WifiScreenEnabler$1;->this$0:Lcom/android/settings_ex/wifi/wifiscreen/WifiScreenEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 37
    return-void
.end method
