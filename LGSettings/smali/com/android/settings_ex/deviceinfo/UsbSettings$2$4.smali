.class Lcom/android/settings_ex/deviceinfo/UsbSettings$2$4;
.super Ljava/lang/Object;
.source "UsbSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/deviceinfo/UsbSettings$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1262
    iput-object p1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$4;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 1264
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$4;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    const-string v1, "5"

    #calls: Lcom/android/settings_ex/deviceinfo/UsbSettings;->changeAutorunMode(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$300(Lcom/android/settings_ex/deviceinfo/UsbSettings;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1265
    sput-boolean v2, Lcom/android/settings_ex/deviceinfo/UsbSettingsControl;->mUsbModeChanging:Z

    .line 1266
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$4;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;
    invoke-static {v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$100(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Landroid/hardware/usb/UsbManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$4;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v1, v1, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$400(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1267
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$4;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$4;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v1, v1, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #getter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mCurrentFunction:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$400(Lcom/android/settings_ex/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/settings_ex/deviceinfo/UsbSettings;->mDefaultFunction:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$502(Lcom/android/settings_ex/deviceinfo/UsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1269
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$4;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    #calls: Lcom/android/settings_ex/deviceinfo/UsbSettings;->connectUsbTether(Z)V
    invoke-static {v0, v2}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->access$1200(Lcom/android/settings_ex/deviceinfo/UsbSettings;Z)V

    .line 1271
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1272
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2$4;->this$1:Lcom/android/settings_ex/deviceinfo/UsbSettings$2;

    iget-object v0, v0, Lcom/android/settings_ex/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings_ex/deviceinfo/UsbSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/deviceinfo/UsbSettings;->finish()V

    .line 1274
    :cond_0
    return-void
.end method
