.class public Lcom/android/settings_ex/deviceinfo/Battery;
.super Landroid/preference/PreferenceActivity;
.source "Battery.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f060010

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/Battery;->addPreferencesFromResource(I)V

    .line 42
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 52
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 46
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 47
    return-void
.end method
