.class public final Landroid/bluetooth/HeadsetBase;
.super Ljava/lang/Object;
.source "HeadsetBase.java"


# static fields
.field private static final DBG:Z = false

.field public static final DIRECTION_INCOMING:I = 0x1

.field public static final DIRECTION_OUTGOING:I = 0x2

.field public static final RFCOMM_DISCONNECTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Bluetooth HeadsetBase"

.field private static sAtInputCount:I


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mAddress:Ljava/lang/String;

.field protected mAtParser:Landroid/bluetooth/AtParser;

.field private final mConnectTimestamp:J

.field private final mDirection:I

.field private mEventThread:Ljava/lang/Thread;

.field private mEventThreadHandler:Landroid/os/Handler;

.field private volatile mEventThreadInterrupted:Z

.field private mNativeData:I

.field private final mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mRfcommChannel:I

.field private mTimeoutRemainingMs:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput v0, Landroid/bluetooth/HeadsetBase;->sAtInputCount:I

    .line 64
    invoke-static {}, Landroid/bluetooth/HeadsetBase;->classInitNative()V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .parameter "pm"
    .parameter "adapter"
    .parameter "device"
    .parameter "rfcommChannel"

    .prologue
    .line 79
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x2

    iput v0, p0, Landroid/bluetooth/HeadsetBase;->mDirection:I

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/HeadsetBase;->mConnectTimestamp:J

    .line 82
    iput-object p2, p0, Landroid/bluetooth/HeadsetBase;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 83
    iput-object p3, p0, Landroid/bluetooth/HeadsetBase;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 84
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/HeadsetBase;->mAddress:Ljava/lang/String;

    .line 85
    iput p4, p0, Landroid/bluetooth/HeadsetBase;->mRfcommChannel:I

    .line 86
    const/4 v0, 0x1

    const-string v1, "HeadsetBase"

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/HeadsetBase;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 87
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 88
    invoke-virtual {p0}, Landroid/bluetooth/HeadsetBase;->initializeAtParser()V

    .line 90
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/bluetooth/HeadsetBase;->initializeNativeDataNative(I)V

    .line 92
    invoke-virtual {p0}, Landroid/bluetooth/HeadsetBase;->getWbsSupport()V

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/os/PowerManager;Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothDevice;IILandroid/os/Handler;)V
    .locals 3
    .parameter "pm"
    .parameter "adapter"
    .parameter "device"
    .parameter "socketFd"
    .parameter "rfcommChannel"
    .parameter "handler"

    .prologue
    const/4 v2, 0x1

    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput v2, p0, Landroid/bluetooth/HeadsetBase;->mDirection:I

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/bluetooth/HeadsetBase;->mConnectTimestamp:J

    .line 102
    iput-object p2, p0, Landroid/bluetooth/HeadsetBase;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 103
    iput-object p3, p0, Landroid/bluetooth/HeadsetBase;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 104
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/HeadsetBase;->mAddress:Ljava/lang/String;

    .line 105
    iput p5, p0, Landroid/bluetooth/HeadsetBase;->mRfcommChannel:I

    .line 106
    iput-object p6, p0, Landroid/bluetooth/HeadsetBase;->mEventThreadHandler:Landroid/os/Handler;

    .line 107
    const-string v0, "HeadsetBase"

    invoke-virtual {p1, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/HeadsetBase;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 108
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 109
    invoke-virtual {p0}, Landroid/bluetooth/HeadsetBase;->initializeAtParser()V

    .line 111
    invoke-direct {p0, p4}, Landroid/bluetooth/HeadsetBase;->initializeNativeDataNative(I)V

    .line 113
    invoke-virtual {p0}, Landroid/bluetooth/HeadsetBase;->getWbsSupport()V

    .line 115
    return-void
.end method

.method static synthetic access$000(Landroid/bluetooth/HeadsetBase;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Landroid/bluetooth/HeadsetBase;->mEventThreadInterrupted:Z

    return v0
.end method

.method static synthetic access$100(Landroid/bluetooth/HeadsetBase;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/bluetooth/HeadsetBase;->readNative(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/bluetooth/HeadsetBase;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/bluetooth/HeadsetBase;->getLastReadStatusNative()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/bluetooth/HeadsetBase;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mEventThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Landroid/bluetooth/HeadsetBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/bluetooth/HeadsetBase;->disconnectNative()V

    return-void
.end method

.method private declared-synchronized acquireWakeLock()V
    .locals 1

    .prologue
    .line 305
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    :cond_0
    monitor-exit p0

    return-void

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNativeDataNative()V
.end method

.method private native connectAsyncNative()I
.end method

.method private native connectNative()Z
.end method

.method private native disconnectNative()V
.end method

.method public static getAtInputCount()I
    .locals 1

    .prologue
    .line 317
    sget v0, Landroid/bluetooth/HeadsetBase;->sAtInputCount:I

    return v0
.end method

.method private native getLastReadStatusNative()I
.end method

.method private native getWbsSupportNative()V
.end method

.method private native initializeNativeDataNative(I)V
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 321
    const-string v0, "Bluetooth HeadsetBase"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-void
.end method

.method private native notifySlcEstablishedNative(Ljava/lang/String;)V
.end method

.method private native readNative(I)Ljava/lang/String;
.end method

.method private declared-synchronized releaseWakeLock()V
    .locals 1

    .prologue
    .line 311
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    :cond_0
    monitor-exit p0

    return-void

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native sendURCNative(Ljava/lang/String;)Z
.end method

.method private native setWbsSupportNative(I)V
.end method

.method private stopEventThread()V
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/bluetooth/HeadsetBase;->mEventThreadInterrupted:Z

    .line 195
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mEventThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 197
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mEventThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/HeadsetBase;->mEventThread:Ljava/lang/Thread;

    .line 202
    return-void

    .line 198
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private native waitForAsyncConnectNative(I)I
.end method


# virtual methods
.method public connect(Landroid/os/Handler;)Z
    .locals 1
    .parameter "handler"

    .prologue
    .line 205
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mEventThread:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 206
    invoke-direct {p0}, Landroid/bluetooth/HeadsetBase;->connectNative()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 209
    :goto_0
    return v0

    .line 207
    :cond_0
    iput-object p1, p0, Landroid/bluetooth/HeadsetBase;->mEventThreadHandler:Landroid/os/Handler;

    .line 209
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public connectAsync()Z
    .locals 2

    .prologue
    .line 220
    invoke-direct {p0}, Landroid/bluetooth/HeadsetBase;->connectAsyncNative()I

    move-result v0

    .line 221
    .local v0, ret:I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mEventThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 245
    invoke-direct {p0}, Landroid/bluetooth/HeadsetBase;->stopEventThread()V

    .line 247
    :cond_0
    invoke-direct {p0}, Landroid/bluetooth/HeadsetBase;->disconnectNative()V

    .line 248
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 69
    :try_start_0
    invoke-direct {p0}, Landroid/bluetooth/HeadsetBase;->cleanupNativeDataNative()V

    .line 70
    invoke-direct {p0}, Landroid/bluetooth/HeadsetBase;->releaseWakeLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 74
    return-void

    .line 72
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAtParser()Landroid/bluetooth/AtParser;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mAtParser:Landroid/bluetooth/AtParser;

    return-object v0
.end method

.method public getConnectTimestamp()J
    .locals 2

    .prologue
    .line 289
    iget-wide v0, p0, Landroid/bluetooth/HeadsetBase;->mConnectTimestamp:J

    return-wide v0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Landroid/bluetooth/HeadsetBase;->mDirection:I

    return v0
.end method

.method public getRemainingAsyncConnectWaitingTimeMs()I
    .locals 1

    .prologue
    .line 226
    iget v0, p0, Landroid/bluetooth/HeadsetBase;->mTimeoutRemainingMs:I

    return v0
.end method

.method public getRemoteDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getWbsSupport()V
    .locals 0

    .prologue
    .line 257
    invoke-direct {p0}, Landroid/bluetooth/HeadsetBase;->getWbsSupportNative()V

    .line 258
    return-void
.end method

.method protected handleInput(Ljava/lang/String;)V
    .locals 4
    .parameter "input"

    .prologue
    .line 122
    invoke-direct {p0}, Landroid/bluetooth/HeadsetBase;->acquireWakeLock()V

    .line 125
    const-class v2, Landroid/bluetooth/HeadsetBase;

    monitor-enter v2

    .line 126
    :try_start_0
    sget v1, Landroid/bluetooth/HeadsetBase;->sAtInputCount:I

    const v3, 0x7fffffff

    if-ne v1, v3, :cond_1

    .line 127
    const/4 v1, 0x0

    sput v1, Landroid/bluetooth/HeadsetBase;->sAtInputCount:I

    .line 131
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    iget-object v1, p0, Landroid/bluetooth/HeadsetBase;->mAtParser:Landroid/bluetooth/AtParser;

    invoke-virtual {v1, p1}, Landroid/bluetooth/AtParser;->process(Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;

    move-result-object v0

    .line 138
    .local v0, result:Landroid/bluetooth/AtCommandResult;
    invoke-virtual {v0}, Landroid/bluetooth/AtCommandResult;->getResultCode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 139
    const-string v1, "Bluetooth HeadsetBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error processing <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/AtCommandResult;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/bluetooth/HeadsetBase;->sendURC(Ljava/lang/String;)Z

    .line 144
    invoke-direct {p0}, Landroid/bluetooth/HeadsetBase;->releaseWakeLock()V

    .line 145
    return-void

    .line 129
    .end local v0           #result:Landroid/bluetooth/AtCommandResult;
    :cond_1
    :try_start_1
    sget v1, Landroid/bluetooth/HeadsetBase;->sAtInputCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/bluetooth/HeadsetBase;->sAtInputCount:I

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected initializeAtParser()V
    .locals 1

    .prologue
    .line 152
    new-instance v0, Landroid/bluetooth/AtParser;

    invoke-direct {v0}, Landroid/bluetooth/AtParser;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/HeadsetBase;->mAtParser:Landroid/bluetooth/AtParser;

    .line 156
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mEventThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifySlcEstablished()V
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mAddress:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/bluetooth/HeadsetBase;->notifySlcEstablishedNative(Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public declared-synchronized sendURC(Ljava/lang/String;)Z
    .locals 4
    .parameter "urc"

    .prologue
    .line 293
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 295
    const-string v1, "Bluetooth HeadsetBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BTUI] sendURC ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-direct {p0, p1}, Landroid/bluetooth/HeadsetBase;->sendURCNative(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 300
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 293
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setWbsSupport(I)V
    .locals 3
    .parameter "wbs"

    .prologue
    .line 262
    const-string v0, "Bluetooth HeadsetBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWbsSupport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-direct {p0, p1}, Landroid/bluetooth/HeadsetBase;->setWbsSupportNative(I)V

    .line 264
    return-void
.end method

.method public startEventThread()V
    .locals 2

    .prologue
    .line 163
    new-instance v0, Landroid/bluetooth/HeadsetBase$1;

    const-string v1, "HeadsetBase Event Thread"

    invoke-direct {v0, p0, v1}, Landroid/bluetooth/HeadsetBase$1;-><init>(Landroid/bluetooth/HeadsetBase;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/bluetooth/HeadsetBase;->mEventThread:Ljava/lang/Thread;

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/bluetooth/HeadsetBase;->mEventThreadInterrupted:Z

    .line 187
    iget-object v0, p0, Landroid/bluetooth/HeadsetBase;->mEventThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 188
    return-void
.end method

.method public waitForAsyncConnect(ILandroid/os/Handler;)I
    .locals 1
    .parameter "timeout_ms"
    .parameter "handler"

    .prologue
    .line 235
    invoke-direct {p0, p1}, Landroid/bluetooth/HeadsetBase;->waitForAsyncConnectNative(I)I

    move-result v0

    .line 236
    .local v0, res:I
    if-lez v0, :cond_0

    .line 237
    iput-object p2, p0, Landroid/bluetooth/HeadsetBase;->mEventThreadHandler:Landroid/os/Handler;

    .line 239
    :cond_0
    return v0
.end method