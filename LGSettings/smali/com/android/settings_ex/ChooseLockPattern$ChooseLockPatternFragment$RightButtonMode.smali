.class final enum Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;
.super Ljava/lang/Enum;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RightButtonMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

.field public static final enum Confirm:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

.field public static final enum ConfirmDisabled:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

.field public static final enum Continue:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

.field public static final enum ContinueDisabled:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

.field public static final enum Ok:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;


# instance fields
.field final enabled:Z

.field final text:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 248
    new-instance v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const-string v1, "Continue"

    const v2, 0x7f080407

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 249
    new-instance v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const-string v1, "ContinueDisabled"

    const v2, 0x7f080407

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ContinueDisabled:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 250
    new-instance v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const-string v1, "Confirm"

    const v2, 0x7f080404

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 251
    new-instance v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const-string v1, "ConfirmDisabled"

    const v2, 0x7f080404

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ConfirmDisabled:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 252
    new-instance v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    const-string v1, "Ok"

    const v2, 0x104000a

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    .line 247
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Continue:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ContinueDisabled:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Confirm:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->ConfirmDisabled:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->Ok:Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->$VALUES:[Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter "text"
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .prologue
    .line 258
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 259
    iput p3, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->text:I

    .line 260
    iput-boolean p4, p0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->enabled:Z

    .line 261
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;
    .locals 1
    .parameter

    .prologue
    .line 247
    const-class v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    return-object v0
.end method

.method public static values()[Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;
    .locals 1

    .prologue
    .line 247
    sget-object v0, Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->$VALUES:[Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    invoke-virtual {v0}, [Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings_ex/ChooseLockPattern$ChooseLockPatternFragment$RightButtonMode;

    return-object v0
.end method
