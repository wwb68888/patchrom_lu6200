.class Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "OppIncomingFileConfirmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;


# direct methods
.method constructor <init>(Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity$1;->this$0:Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 87
    const-string v0, "android.btopp.intent.action.USER_CONFIRMATION_TIMEOUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity$1;->this$0:Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;

    #calls: Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->onTimeout()V
    invoke-static {v0}, Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;->access$000(Lcom/broadcom/bt/app/opp/notification/OppIncomingFileConfirmActivity;)V

    goto :goto_0
.end method
