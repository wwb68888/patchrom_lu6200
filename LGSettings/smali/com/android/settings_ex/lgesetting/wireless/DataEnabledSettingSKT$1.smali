.class Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$1;
.super Ljava/lang/Object;
.source "DataEnabledSettingSKT.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->createCustomViewDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$1;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT$1;->this$0:Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;

    #calls: Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->putSettingsSecureDB()V
    invoke-static {v0}, Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;->access$000(Lcom/android/settings_ex/lgesetting/wireless/DataEnabledSettingSKT;)V

    .line 92
    return-void
.end method
