.class Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$1;
.super Landroid/os/Handler;
.source "ChooseBackupPin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$1;->this$0:Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 120
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$1;->this$0:Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment;->updateStage(Lcom/android/settings_ex/ChooseBackupPin$ChooseBackupPinFragment$Stage;)V

    .line 123
    :cond_0
    return-void
.end method
