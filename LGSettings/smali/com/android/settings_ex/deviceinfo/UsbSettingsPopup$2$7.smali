.class Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$7;
.super Ljava/lang/Object;
.source "UsbSettingsPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2$7;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettingsPopup$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 314
    return-void
.end method
