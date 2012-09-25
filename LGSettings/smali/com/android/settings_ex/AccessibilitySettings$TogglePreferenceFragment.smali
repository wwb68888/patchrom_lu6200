.class abstract Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "TogglePreferenceFragment"
.end annotation


# instance fields
.field private mDisableWarningMessage:Ljava/lang/CharSequence;

.field private mDisableWarningTitle:Ljava/lang/CharSequence;

.field private mEnableWarningMessage:Ljava/lang/CharSequence;

.field private mEnableWarningTitle:Ljava/lang/CharSequence;

.field private mOldActivityTitle:Ljava/lang/CharSequence;

.field private mPreferenceKey:Ljava/lang/String;

.field private mSettingsIntent:Landroid/content/Intent;

.field private mSettingsTitle:Ljava/lang/CharSequence;

.field private mShownDialogId:I

.field private mSummaryPreference:Landroid/preference/Preference;

.field private mToggleSwitch:Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 812
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/AccessibilitySettings$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 812
    invoke-direct {p0}, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private installActionBarToggleSwitch()V
    .locals 2

    .prologue
    .line 951
    invoke-virtual {p0}, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    #calls: Lcom/android/settings_ex/AccessibilitySettings;->createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;
    invoke-static {v0}, Lcom/android/settings_ex/AccessibilitySettings;->access$800(Landroid/app/Activity;)Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mToggleSwitch:Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;

    .line 952
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mToggleSwitch:Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;

    new-instance v1, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment$2;-><init>(Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 975
    return-void
.end method

.method private processArguments()V
    .locals 10

    .prologue
    .line 978
    invoke-virtual {p0}, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 981
    .local v1, arguments:Landroid/os/Bundle;
    const-string v8, "preference_key"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    .line 984
    const-string v8, "checked"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 985
    .local v2, enabled:Z
    iget-object v8, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mToggleSwitch:Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v8, v2}, Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 988
    invoke-virtual {p0}, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 989
    .local v0, activity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 990
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    .line 991
    const-string v8, "title"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 992
    .local v7, title:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 996
    .end local v7           #title:Ljava/lang/String;
    :cond_1
    const-string v8, "summary"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 997
    .local v6, summary:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v8, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1000
    const-string v8, "settings_title"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1001
    .local v5, settingsTitle:Ljava/lang/String;
    const-string v8, "settings_component_name"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1002
    .local v3, settingsComponentName:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1003
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 1005
    .local v4, settingsIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1006
    iput-object v5, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    .line 1007
    iput-object v4, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    .line 1008
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->setHasOptionsMenu(Z)V

    .line 1013
    .end local v4           #settingsIntent:Landroid/content/Intent;
    :cond_2
    const-string v8, "enable_warning_title"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mEnableWarningTitle:Ljava/lang/CharSequence;

    .line 1017
    const-string v8, "enable_warning_message"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    .line 1021
    const-string v8, "disable_warning_title"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mDisableWarningTitle:Ljava/lang/CharSequence;

    .line 1025
    const-string v8, "disable_warning_message"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;

    .line 1027
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 932
    packed-switch p2, :pswitch_data_0

    .line 946
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 934
    :pswitch_0
    iget v2, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mShownDialogId:I

    if-ne v2, v0, :cond_0

    .line 935
    .local v0, checked:Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mToggleSwitch:Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 936
    invoke-virtual {p0}, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "checked"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 937
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 948
    :goto_1
    return-void

    .end local v0           #checked:Z
    :cond_0
    move v0, v1

    .line 934
    goto :goto_0

    .line 940
    :pswitch_1
    iget v2, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mShownDialogId:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 941
    .restart local v0       #checked:Z
    :goto_2
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mToggleSwitch:Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;->setCheckedInternal(Z)V

    .line 942
    invoke-virtual {p0}, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "checked"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 943
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_1

    .end local v0           #checked:Z
    :cond_1
    move v0, v1

    .line 940
    goto :goto_2

    .line 932
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 839
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 840
    invoke-virtual {p0}, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 842
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 843
    new-instance v1, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment$1;

    invoke-virtual {p0}, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment$1;-><init>(Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    .line 867
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 868
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    const v2, 0x7f0400a0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 869
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mSummaryPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 870
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "dialogId"

    .prologue
    const/4 v4, 0x1

    .line 903
    const/4 v1, 0x0

    .line 904
    .local v1, title:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 905
    .local v0, message:Ljava/lang/CharSequence;
    packed-switch p1, :pswitch_data_0

    .line 917
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 907
    :pswitch_0
    iput v4, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mShownDialogId:I

    .line 908
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mEnableWarningTitle:Ljava/lang/CharSequence;

    .line 909
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mEnableWarningMessage:Ljava/lang/CharSequence;

    .line 919
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    .line 912
    :pswitch_1
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mShownDialogId:I

    .line 913
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mDisableWarningTitle:Ljava/lang/CharSequence;

    .line 914
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mDisableWarningMessage:Ljava/lang/CharSequence;

    .line 915
    goto :goto_0

    .line 905
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 895
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 896
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 897
    .local v0, menuItem:Landroid/view/MenuItem;
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 898
    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 899
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 883
    invoke-virtual {p0}, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 884
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 885
    invoke-virtual {p0}, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mOldActivityTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 887
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->mToggleSwitch:Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings_ex/AccessibilitySettings$ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 888
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDestroyView()V

    .line 889
    return-void
.end method

.method public abstract onPreferenceToggled(Ljava/lang/String;Z)V
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 874
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 875
    invoke-direct {p0}, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->installActionBarToggleSwitch()V

    .line 876
    invoke-direct {p0}, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->processArguments()V

    .line 877
    invoke-virtual {p0}, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 878
    invoke-virtual {p0}, Lcom/android/settings_ex/AccessibilitySettings$TogglePreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 879
    return-void
.end method
