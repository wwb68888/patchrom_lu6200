.class Lcom/android/settings_ex/hidden/ApnSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/hidden/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/hidden/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/hidden/ApnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/settings_ex/hidden/ApnSettings$1;->this$0:Lcom/android/settings_ex/hidden/ApnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 117
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 119
    #calls: Lcom/android/settings_ex/hidden/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    invoke-static {p2}, Lcom/android/settings_ex/hidden/ApnSettings;->access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v3

    .line 120
    .local v3, state:Lcom/android/internal/telephony/Phone$DataState;
    sget-object v4, Lcom/android/settings_ex/hidden/ApnSettings$3;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 150
    .end local v3           #state:Lcom/android/internal/telephony/Phone$DataState;
    :cond_0
    :goto_0
    return-void

    .line 122
    .restart local v3       #state:Lcom/android/internal/telephony/Phone$DataState;
    :pswitch_0
    invoke-static {}, Lcom/android/settings_ex/hidden/ApnSettings;->access$100()Z

    move-result v4

    if-nez v4, :cond_1

    .line 123
    iget-object v4, p0, Lcom/android/settings_ex/hidden/ApnSettings$1;->this$0:Lcom/android/settings_ex/hidden/ApnSettings;

    #calls: Lcom/android/settings_ex/hidden/ApnSettings;->fillList()V
    invoke-static {v4}, Lcom/android/settings_ex/hidden/ApnSettings;->access$200(Lcom/android/settings_ex/hidden/ApnSettings;)V

    goto :goto_0

    .line 125
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/hidden/ApnSettings$1;->this$0:Lcom/android/settings_ex/hidden/ApnSettings;

    const/16 v5, 0x3e9

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/hidden/ApnSettings;->showDialog(I)V

    goto :goto_0

    .line 131
    .end local v3           #state:Lcom/android/internal/telephony/Phone$DataState;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 133
    const-string v4, "availableArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 135
    .local v1, availableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "activeArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 137
    .local v0, activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "erroredArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 141
    .local v2, erroredList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 142
    const-string v4, "DCM"

    invoke-static {}, Lcom/android/settings_ex/lgesetting/Config/Config;->getOperator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 143
    iget-object v4, p0, Lcom/android/settings_ex/hidden/ApnSettings$1;->this$0:Lcom/android/settings_ex/hidden/ApnSettings;

    const/4 v5, 0x0

    #setter for: Lcom/android/settings_ex/hidden/ApnSettings;->mTetheredSate:I
    invoke-static {v4, v5}, Lcom/android/settings_ex/hidden/ApnSettings;->access$302(Lcom/android/settings_ex/hidden/ApnSettings;I)I

    .line 147
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/hidden/ApnSettings$1;->this$0:Lcom/android/settings_ex/hidden/ApnSettings;

    #calls: Lcom/android/settings_ex/hidden/ApnSettings;->fillList()V
    invoke-static {v4}, Lcom/android/settings_ex/hidden/ApnSettings;->access$200(Lcom/android/settings_ex/hidden/ApnSettings;)V

    goto :goto_0

    .line 145
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/hidden/ApnSettings$1;->this$0:Lcom/android/settings_ex/hidden/ApnSettings;

    const/4 v5, 0x1

    #setter for: Lcom/android/settings_ex/hidden/ApnSettings;->mTetheredSate:I
    invoke-static {v4, v5}, Lcom/android/settings_ex/hidden/ApnSettings;->access$302(Lcom/android/settings_ex/hidden/ApnSettings;I)I

    goto :goto_1

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
