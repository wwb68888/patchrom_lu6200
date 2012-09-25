.class public Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;
.super Landroid/preference/CheckBoxPreference;
.source "SyncStateCheckBoxPreference.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthority:Ljava/lang/String;

.field private mFailed:Z

.field private mIsActive:Z

.field private mIsPending:Z

.field private mOneTimeSyncMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "account"
    .parameter "authority"

    .prologue
    const/4 v1, 0x0

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-boolean v1, p0, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->mIsActive:Z

    .line 32
    iput-boolean v1, p0, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->mIsPending:Z

    .line 33
    iput-boolean v1, p0, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->mFailed:Z

    .line 42
    iput-boolean v1, p0, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    .line 53
    iput-object p2, p0, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->mAccount:Landroid/accounts/Account;

    .line 54
    iput-object p3, p0, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->mAuthority:Ljava/lang/String;

    .line 55
    const v0, 0x7f040083

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->setWidgetLayoutResource(I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-boolean v0, p0, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->mIsActive:Z

    .line 32
    iput-boolean v0, p0, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->mIsPending:Z

    .line 33
    iput-boolean v0, p0, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->mFailed:Z

    .line 42
    iput-boolean v0, p0, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    .line 46
    const v0, 0x7f040083

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->setWidgetLayoutResource(I)V

    .line 47
    iput-object v1, p0, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->mAccount:Landroid/accounts/Account;

    .line 48
    iput-object v1, p0, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->mAuthority:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public isOneTimeSyncMode()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    return v0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 11
    .parameter "view"

    .prologue
    const/16 v8, 0x8

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/preference/CheckBoxPreference;->onBindView(Landroid/view/View;)V

    .line 61
    const v6, 0x7f0b0144

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings_ex/widget/AnimatedImageView;

    .line 63
    .local v4, syncActiveView:Lcom/android/settings_ex/widget/AnimatedImageView;
    const v6, 0x7f0b0143

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 65
    .local v5, syncFailedView:Landroid/view/View;
    iget-boolean v6, p0, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->mIsActive:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->mIsPending:Z

    if-eqz v6, :cond_1

    :cond_0
    move v0, v9

    .line 66
    .local v0, activeVisible:Z
    :goto_0
    if-eqz v0, :cond_2

    move v6, v7

    :goto_1
    invoke-virtual {v4, v6}, Lcom/android/settings_ex/widget/AnimatedImageView;->setVisibility(I)V

    .line 67
    iget-boolean v6, p0, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->mIsActive:Z

    invoke-virtual {v4, v6}, Lcom/android/settings_ex/widget/AnimatedImageView;->setAnimating(Z)V

    .line 69
    iget-boolean v6, p0, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->mFailed:Z

    if-eqz v6, :cond_3

    if-nez v0, :cond_3

    move v2, v9

    .line 70
    .local v2, failedVisible:Z
    :goto_2
    if-eqz v2, :cond_4

    move v6, v7

    :goto_3
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 72
    const v6, 0x1020001

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 73
    .local v1, checkBox:Landroid/view/View;
    iget-boolean v6, p0, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    if-eqz v6, :cond_6

    .line 74
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 81
    const v6, 0x1020010

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 82
    .local v3, summary:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->mAccount:Landroid/accounts/Account;

    iget-object v6, v6, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v8, "com.lge.android."

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 83
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v8, 0x7f08099f

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-virtual {v6, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .end local v3           #summary:Landroid/widget/TextView;
    :goto_4
    return-void

    .end local v0           #activeVisible:Z
    .end local v1           #checkBox:Landroid/view/View;
    .end local v2           #failedVisible:Z
    :cond_1
    move v0, v7

    .line 65
    goto :goto_0

    .restart local v0       #activeVisible:Z
    :cond_2
    move v6, v8

    .line 66
    goto :goto_1

    :cond_3
    move v2, v7

    .line 69
    goto :goto_2

    .restart local v2       #failedVisible:Z
    :cond_4
    move v6, v8

    .line 70
    goto :goto_3

    .line 85
    .restart local v1       #checkBox:Landroid/view/View;
    .restart local v3       #summary:Landroid/widget/TextView;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v8, 0x7f08060f

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-virtual {v6, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 88
    .end local v3           #summary:Landroid/widget/TextView;
    :cond_6
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    if-nez v0, :cond_0

    .line 139
    invoke-super {p0}, Landroid/preference/CheckBoxPreference;->onClick()V

    .line 141
    :cond_0
    return-void
.end method

.method public setActive(Z)V
    .locals 0
    .parameter "isActive"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->mIsActive:Z

    .line 98
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->notifyChanged()V

    .line 99
    return-void
.end method

.method public setFailed(Z)V
    .locals 0
    .parameter "failed"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->mFailed:Z

    .line 116
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->notifyChanged()V

    .line 117
    return-void
.end method

.method public setOneTimeSyncMode(Z)V
    .locals 0
    .parameter "oneTimeSyncMode"

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->mOneTimeSyncMode:Z

    .line 124
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->notifyChanged()V

    .line 125
    return-void
.end method

.method public setPending(Z)V
    .locals 0
    .parameter "isPending"

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->mIsPending:Z

    .line 107
    invoke-virtual {p0}, Lcom/android/settings_ex/accounts/SyncStateCheckBoxPreference;->notifyChanged()V

    .line 108
    return-void
.end method
