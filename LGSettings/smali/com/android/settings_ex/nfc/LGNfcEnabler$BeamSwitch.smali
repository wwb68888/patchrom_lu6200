.class public Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamSwitch;
.super Ljava/lang/Object;
.source "LGNfcEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings_ex/nfc/LGNfcEnabler$OnNfcStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/nfc/LGNfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BeamSwitch"
.end annotation


# instance fields
.field private final mSwitch:Landroid/widget/Switch;

.field mTrigger:Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamTrigger;

.field final synthetic this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/nfc/LGNfcEnabler;Landroid/widget/Switch;Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamTrigger;)V
    .locals 2
    .parameter
    .parameter "switchBeam"
    .parameter "trig"

    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamSwitch;->this$0:Lcom/android/settings_ex/nfc/LGNfcEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 458
    iput-object p2, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamSwitch;->mSwitch:Landroid/widget/Switch;

    .line 459
    iput-object p3, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamSwitch;->mTrigger:Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamTrigger;

    .line 460
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamSwitch;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 462
    #getter for: Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {p1}, Lcom/android/settings_ex/nfc/LGNfcEnabler;->access$000(Lcom/android/settings_ex/nfc/LGNfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamSwitch;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 467
    :goto_0
    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamSwitch;->mSwitch:Landroid/widget/Switch;

    #getter for: Lcom/android/settings_ex/nfc/LGNfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {p1}, Lcom/android/settings_ex/nfc/LGNfcEnabler;->access$000(Lcom/android/settings_ex/nfc/LGNfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public handleNfcStateChanged(II)V
    .locals 0
    .parameter "newState"
    .parameter "extraState"

    .prologue
    .line 483
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamSwitch;->mTrigger:Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamTrigger;

    invoke-virtual {v0, p2}, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamTrigger;->trigger(Z)Z

    .line 481
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamSwitch;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 478
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/settings_ex/nfc/LGNfcEnabler$BeamSwitch;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 472
    return-void
.end method
