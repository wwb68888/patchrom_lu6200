.class Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$1;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardManager.java"

# interfaces
.implements Lcom/android/vcard/VCardPhoneNumberTranslationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeAndSendVCards(Ljavax/obex/Operation;Ljava/lang/String;ZLjava/lang/String;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)V
    .locals 0
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$1;->this$0:Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueReceived(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .parameter "rawValue"
    .parameter "type"
    .parameter "label"
    .parameter "isPrimary"

    .prologue
    .line 602
    const/16 v1, 0x2c

    const/16 v2, 0x70

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3b

    const/16 v3, 0x77

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 605
    .local v0, numberWithControlSequence:Ljava/lang/String;
    return-object v0
.end method
