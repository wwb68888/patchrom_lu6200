.class Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 331
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    #getter for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$000(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    #getter for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$100(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 327
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 334
    .local p1, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    #getter for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$200(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 336
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 337
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "password"

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v3}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 341
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v3}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 343
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {v3}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "Confirm_pattern"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 356
    .end local v2           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v3}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$304(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)I

    move-result v3

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    .line 349
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    #getter for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$200(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    .line 350
    .local v0, deadline:J
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    #calls: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V
    invoke-static {v3, v0, v1}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$400(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;J)V

    goto :goto_0

    .line 352
    .end local v0           #deadline:J
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    sget-object v4, Lcom/android/settings_ex/ConfirmLockPattern$Stage;->NeedToUnlockWrong:Lcom/android/settings_ex/ConfirmLockPattern$Stage;

    #calls: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings_ex/ConfirmLockPattern$Stage;)V
    invoke-static {v3, v4}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$500(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/settings_ex/ConfirmLockPattern$Stage;)V

    .line 353
    iget-object v3, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    #calls: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->postClearPatternRunnable()V
    invoke-static {v3}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$600(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    goto :goto_0
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    #getter for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$000(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment$2;->this$0:Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;

    #getter for: Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;->access$100(Lcom/android/settings_ex/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 323
    return-void
.end method
