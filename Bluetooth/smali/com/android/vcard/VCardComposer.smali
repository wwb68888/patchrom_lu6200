.class public Lcom/android/vcard/VCardComposer;
.super Ljava/lang/Object;
.source "VCardComposer.java"


# static fields
.field private static final sContactsProjection:[Ljava/lang/String;

.field private static final sImMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private IS_PBAP_FILTER_ADR:Z

.field private IS_PBAP_FILTER_BDAY:Z

.field private IS_PBAP_FILTER_EMAIL:Z

.field private IS_PBAP_FILTER_NICKNAME:Z

.field private IS_PBAP_FILTER_NOTE:Z

.field private IS_PBAP_FILTER_ORG:Z

.field private IS_PBAP_FILTER_PHOTO:Z

.field private IS_PBAP_FILTER_TEL:Z

.field private IS_PBAP_FILTER_TITLE:Z

.field private IS_PBAP_FILTER_URL:Z

.field mAppParam:[B

.field private final mCharset:Ljava/lang/String;

.field private mContactIdColumnId:Ljava/lang/String;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mContentUriForRawContactsEntity:Landroid/net/Uri;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorSuppliedFromOutside:Z

.field private mErrorReason:Ljava/lang/String;

.field private mFirstVCardEmittedInDoCoMoCase:Z

.field private mIdColumn:I

.field private mInitDone:Z

.field private final mIsDoCoMo:Z

.field private mPhoneTranslationCallback:Lcom/android/vcard/VCardPhoneNumberTranslationCallback;

.field private mTerminateCalled:Z

.field private final mVCardType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    .line 124
    sget-object v0, Lcom/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-AIM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-MSN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-YAHOO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-ICQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-JABBER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/android/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-SKYPE-USERNAME"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/vcard/VCardComposer;->sContactsProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 6
    .parameter "context"
    .parameter "vcardType"
    .parameter "charset"
    .parameter "careHandlerErrors"

    .prologue
    .line 242
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;ILjava/lang/String;Z)V

    .line 243
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;[B)V
    .locals 11
    .parameter "context"
    .parameter "vcardType"
    .parameter "charset"
    .parameter "pceFilter"

    .prologue
    const/16 v10, 0x8

    const/16 v9, 0x9

    const/4 v8, 0x7

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;ILjava/lang/String;Z)V

    .line 199
    iget v0, p0, Lcom/android/vcard/VCardComposer;->mVCardType:I

    const/high16 v1, 0x8

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    move v6, v5

    .line 200
    .local v6, useFilter:Z
    :goto_0
    const-string v0, "VCardComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BTUI] ### VCardComposer : vcardType("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit16 v2, p2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") charset("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") useFilter("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    if-eqz v6, :cond_0

    if-nez p4, :cond_2

    .line 218
    :cond_0
    :goto_1
    return-void

    .end local v6           #useFilter:Z
    :cond_1
    move v6, v7

    .line 199
    goto :goto_0

    .line 204
    .restart local v6       #useFilter:Z
    :cond_2
    iput-object p4, p0, Lcom/android/vcard/VCardComposer;->mAppParam:[B

    .line 206
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mAppParam:[B

    aget-byte v0, v0, v9

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    move v0, v5

    :goto_2
    iput-boolean v0, p0, Lcom/android/vcard/VCardComposer;->IS_PBAP_FILTER_PHOTO:Z

    .line 207
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mAppParam:[B

    aget-byte v0, v0, v9

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    move v0, v5

    :goto_3
    iput-boolean v0, p0, Lcom/android/vcard/VCardComposer;->IS_PBAP_FILTER_BDAY:Z

    .line 208
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mAppParam:[B

    aget-byte v0, v0, v9

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    move v0, v5

    :goto_4
    iput-boolean v0, p0, Lcom/android/vcard/VCardComposer;->IS_PBAP_FILTER_ADR:Z

    .line 209
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mAppParam:[B

    aget-byte v0, v0, v9

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_6

    move v0, v5

    :goto_5
    iput-boolean v0, p0, Lcom/android/vcard/VCardComposer;->IS_PBAP_FILTER_TEL:Z

    .line 211
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mAppParam:[B

    aget-byte v0, v0, v10

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    move v0, v5

    :goto_6
    iput-boolean v0, p0, Lcom/android/vcard/VCardComposer;->IS_PBAP_FILTER_EMAIL:Z

    .line 212
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mAppParam:[B

    aget-byte v0, v0, v10

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    move v0, v5

    :goto_7
    iput-boolean v0, p0, Lcom/android/vcard/VCardComposer;->IS_PBAP_FILTER_TITLE:Z

    .line 214
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mAppParam:[B

    aget-byte v0, v0, v8

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    move v0, v5

    :goto_8
    iput-boolean v0, p0, Lcom/android/vcard/VCardComposer;->IS_PBAP_FILTER_ORG:Z

    .line 215
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mAppParam:[B

    aget-byte v0, v0, v8

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    move v0, v5

    :goto_9
    iput-boolean v0, p0, Lcom/android/vcard/VCardComposer;->IS_PBAP_FILTER_NOTE:Z

    .line 216
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mAppParam:[B

    aget-byte v0, v0, v8

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_b

    move v0, v5

    :goto_a
    iput-boolean v0, p0, Lcom/android/vcard/VCardComposer;->IS_PBAP_FILTER_URL:Z

    .line 217
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mAppParam:[B

    aget-byte v0, v0, v8

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_c

    :goto_b
    iput-boolean v5, p0, Lcom/android/vcard/VCardComposer;->IS_PBAP_FILTER_NICKNAME:Z

    goto :goto_1

    :cond_3
    move v0, v7

    .line 206
    goto :goto_2

    :cond_4
    move v0, v7

    .line 207
    goto :goto_3

    :cond_5
    move v0, v7

    .line 208
    goto :goto_4

    :cond_6
    move v0, v7

    .line 209
    goto :goto_5

    :cond_7
    move v0, v7

    .line 211
    goto :goto_6

    :cond_8
    move v0, v7

    .line 212
    goto :goto_7

    :cond_9
    move v0, v7

    .line 214
    goto :goto_8

    :cond_a
    move v0, v7

    .line 215
    goto :goto_9

    :cond_b
    move v0, v7

    .line 216
    goto :goto_a

    :cond_c
    move v5, v7

    .line 217
    goto :goto_b
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 4
    .parameter "context"
    .parameter "vcardType"
    .parameter "careHandlerErrors"

    .prologue
    .line 226
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 228
    iget v1, p0, Lcom/android/vcard/VCardComposer;->mVCardType:I

    const/high16 v2, 0x8

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 229
    .local v0, useFilter:Z
    :goto_0
    const-string v1, "VCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BTUI] ### VCardComposer : vcardType("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    and-int/lit16 v3, p2, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") charset("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") useFilter("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void

    .line 228
    .end local v0           #useFilter:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;ILjava/lang/String;Z)V
    .locals 4
    .parameter "context"
    .parameter "resolver"
    .parameter "vcardType"
    .parameter "charset"
    .parameter "careHandlerErrors"

    .prologue
    const/4 v0, 0x1

    .line 251
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const-string v1, "No error"

    iput-object v1, p0, Lcom/android/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    .line 157
    iput-boolean v0, p0, Lcom/android/vcard/VCardComposer;->mTerminateCalled:Z

    .line 165
    const/16 v1, 0xa

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/vcard/VCardComposer;->mAppParam:[B

    .line 829
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/vcard/VCardComposer;->mContactIdColumnId:Ljava/lang/String;

    .line 254
    iput p3, p0, Lcom/android/vcard/VCardComposer;->mVCardType:I

    .line 255
    iput-object p2, p0, Lcom/android/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    .line 257
    invoke-static {p3}, Lcom/android/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/vcard/VCardComposer;->mIsDoCoMo:Z

    .line 259
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p4, "UTF-8"

    .line 260
    :cond_0
    invoke-static {p3}, Lcom/android/vcard/VCardConfig;->isVersion30(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "UTF-8"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 263
    .local v0, shouldAppendCharsetParam:Z
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/vcard/VCardComposer;->mIsDoCoMo:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_6

    .line 265
    :cond_2
    const-string v1, "SHIFT_JIS"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 285
    iput-object p4, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    .line 319
    :goto_1
    const-string v1, "VCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Use the charset \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    return-void

    .line 260
    .end local v0           #shouldAppendCharsetParam:Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 290
    .restart local v0       #shouldAppendCharsetParam:Z
    :cond_4
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 291
    const-string v1, "SHIFT_JIS"

    iput-object v1, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto :goto_1

    .line 301
    :cond_5
    iput-object p4, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto :goto_1

    .line 305
    :cond_6
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 306
    const-string v1, "UTF-8"

    iput-object v1, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto :goto_1

    .line 315
    :cond_7
    iput-object p4, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto :goto_1
.end method

.method private closeCursorIfAppropriate()V
    .locals 4

    .prologue
    .line 771
    iget-boolean v1, p0, Lcom/android/vcard/VCardComposer;->mCursorSuppliedFromOutside:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 773
    :try_start_0
    iget-object v1, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 779
    :cond_0
    return-void

    .line 774
    :catch_0
    move-exception v0

    .line 775
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v1, "VCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLiteException on Cursor#close(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createOneEntryInternal(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 17
    .parameter "contactId"
    .parameter "getEntityIteratorMethod"

    .prologue
    .line 572
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 577
    .local v9, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const/4 v12, 0x0

    .line 579
    .local v12, entityIterator:Landroid/content/EntityIterator;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/vcard/VCardComposer;->mContentUriForRawContactsEntity:Landroid/net/Uri;

    .line 580
    .local v2, uri:Landroid/net/Uri;
    const-string v16, "contact_id=?"

    .line 581
    .local v16, selection:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v5, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    .local v5, selectionArgs:[Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 585
    const/4 v1, 0x0

    const/4 v3, 0x5

    :try_start_1
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object v2, v3, v4

    const/4 v4, 0x2

    const-string v6, "contact_id=?"

    aput-object v6, v3, v4

    const/4 v4, 0x3

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const/4 v6, 0x0

    aput-object v6, v3, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/content/EntityIterator;

    move-object v12, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    .line 602
    :goto_0
    if-nez v12, :cond_3

    .line 603
    :try_start_2
    const-string v1, "VCardComposer"

    const-string v3, "EntityIterator is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const-string v1, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 629
    if-eqz v12, :cond_0

    .line 630
    invoke-interface {v12}, Landroid/content/EntityIterator;->close()V

    .line 634
    :cond_0
    :goto_1
    return-object v1

    .line 587
    :catch_0
    move-exception v10

    .line 588
    .local v10, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v1, "VCardComposer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalArgumentException has been thrown: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 629
    .end local v2           #uri:Landroid/net/Uri;
    .end local v5           #selectionArgs:[Ljava/lang/String;
    .end local v10           #e:Ljava/lang/IllegalArgumentException;
    .end local v16           #selection:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v12, :cond_1

    .line 630
    invoke-interface {v12}, Landroid/content/EntityIterator;->close()V

    :cond_1
    throw v1

    .line 590
    .restart local v2       #uri:Landroid/net/Uri;
    .restart local v5       #selectionArgs:[Ljava/lang/String;
    .restart local v16       #selection:Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 591
    .local v10, e:Ljava/lang/IllegalAccessException;
    :try_start_4
    const-string v1, "VCardComposer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IllegalAccessException has been thrown: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 593
    .end local v10           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v10

    .line 594
    .local v10, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "VCardComposer"

    const-string v3, "InvocationTargetException has been thrown: "

    invoke-static {v1, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 595
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "InvocationTargetException has been thrown"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 598
    .end local v10           #e:Ljava/lang/reflect/InvocationTargetException;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const-string v4, "contact_id=?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v12

    goto :goto_0

    .line 607
    :cond_3
    invoke-interface {v12}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 608
    const-string v1, "VCardComposer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Data does not exist. contactId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const-string v1, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 629
    if-eqz v12, :cond_0

    .line 630
    invoke-interface {v12}, Landroid/content/EntityIterator;->close()V

    goto/16 :goto_1

    .line 612
    :cond_4
    :try_start_5
    invoke-interface {v12}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 613
    invoke-interface {v12}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/Entity;

    .line 614
    .local v11, entity:Landroid/content/Entity;
    invoke-virtual {v11}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/Entity$NamedContentValues;

    .line 615
    .local v15, namedContentValues:Landroid/content/Entity$NamedContentValues;
    iget-object v7, v15, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 616
    .local v7, contentValues:Landroid/content/ContentValues;
    const-string v1, "mimetype"

    invoke-virtual {v7, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 617
    .local v14, key:Ljava/lang/String;
    if-eqz v14, :cond_5

    .line 618
    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 620
    .local v8, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v8, :cond_6

    .line 621
    new-instance v8, Ljava/util/ArrayList;

    .end local v8           #contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 622
    .restart local v8       #contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v9, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    :cond_6
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 629
    .end local v7           #contentValues:Landroid/content/ContentValues;
    .end local v8           #contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v11           #entity:Landroid/content/Entity;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #key:Ljava/lang/String;
    .end local v15           #namedContentValues:Landroid/content/Entity$NamedContentValues;
    :cond_7
    if-eqz v12, :cond_8

    .line 630
    invoke-interface {v12}, Landroid/content/EntityIterator;->close()V

    .line 634
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/vcard/VCardComposer;->buildVCard(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1
.end method

.method private initInterCursorCreationPart(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "contentUri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v6, 0x0

    .line 500
    iput-boolean v6, p0, Lcom/android/vcard/VCardComposer;->mCursorSuppliedFromOutside:Z

    .line 501
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 503
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 504
    const-string v0, "VCardComposer"

    const-string v1, "Cursor became null unexpectedly"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const-string v0, "Failed to get database information"

    iput-object v0, p0, Lcom/android/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    move v0, v6

    .line 508
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initInterFirstPart(Landroid/net/Uri;)Z
    .locals 2
    .parameter "contentUriForRawContactsEntity"

    .prologue
    .line 487
    if-eqz p1, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Lcom/android/vcard/VCardComposer;->mContentUriForRawContactsEntity:Landroid/net/Uri;

    .line 490
    iget-boolean v0, p0, Lcom/android/vcard/VCardComposer;->mInitDone:Z

    if-eqz v0, :cond_1

    .line 491
    const-string v0, "VCardComposer"

    const-string v1, "init() is already called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v0, 0x0

    .line 494
    :goto_1
    return v0

    .line 487
    .restart local p1
    :cond_0
    sget-object p1, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 494
    .end local p1
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private initInterLastPart()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 537
    iput-boolean v1, p0, Lcom/android/vcard/VCardComposer;->mInitDone:Z

    .line 538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vcard/VCardComposer;->mTerminateCalled:Z

    .line 539
    return v1
.end method

.method private initInterMainPart()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 512
    iget-object v1, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    .line 517
    :cond_0
    invoke-direct {p0}, Lcom/android/vcard/VCardComposer;->closeCursorIfAppropriate()V

    .line 533
    :cond_1
    :goto_0
    return v0

    .line 523
    :cond_2
    iget-object v1, p0, Lcom/android/vcard/VCardComposer;->mContactIdColumnId:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/vcard/VCardComposer;->mContactIdColumnId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 524
    iget-object v1, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/android/vcard/VCardComposer;->mContactIdColumnId:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/vcard/VCardComposer;->mIdColumn:I

    .line 533
    :goto_1
    iget v1, p0, Lcom/android/vcard/VCardComposer;->mIdColumn:I

    if-ltz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 526
    :cond_3
    iget-object v1, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/vcard/VCardComposer;->mIdColumn:I

    goto :goto_1
.end method


# virtual methods
.method public buildVCard(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const/high16 v3, 0x8

    .line 660
    if-nez p1, :cond_0

    .line 661
    const-string v1, "VCardComposer"

    const-string v2, "The given map is null. Ignore and return empty String"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const-string v1, ""

    .line 761
    :goto_0
    return-object v1

    .line 668
    :cond_0
    iget v1, p0, Lcom/android/vcard/VCardComposer;->mVCardType:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_a

    .line 670
    new-instance v0, Lcom/android/vcard/VCardBuilder;

    iget v1, p0, Lcom/android/vcard/VCardComposer;->mVCardType:I

    iget-object v2, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/vcard/VCardBuilder;-><init>(ILjava/lang/String;)V

    .line 684
    .local v0, builder:Lcom/android/vcard/VCardBuilder;
    :goto_1
    iget v1, p0, Lcom/android/vcard/VCardComposer;->mVCardType:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_c

    .line 685
    const-string v1, "vnd.android.cursor.item/name"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendNameProperties(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 686
    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lcom/android/vcard/VCardComposer;->mPhoneTranslationCallback:Lcom/android/vcard/VCardPhoneNumberTranslationCallback;

    invoke-virtual {v0, v1, v2}, Lcom/android/vcard/VCardBuilder;->appendPhones(Ljava/util/List;Lcom/android/vcard/VCardPhoneNumberTranslationCallback;)Lcom/android/vcard/VCardBuilder;

    .line 688
    iget-boolean v1, p0, Lcom/android/vcard/VCardComposer;->IS_PBAP_FILTER_PHOTO:Z

    if-eqz v1, :cond_1

    .line 693
    :cond_1
    iget-boolean v1, p0, Lcom/android/vcard/VCardComposer;->IS_PBAP_FILTER_BDAY:Z

    if-eqz v1, :cond_2

    .line 695
    const-string v1, "vnd.android.cursor.item/contact_event"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendEvents(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 697
    :cond_2
    iget-boolean v1, p0, Lcom/android/vcard/VCardComposer;->IS_PBAP_FILTER_ADR:Z

    if-eqz v1, :cond_3

    .line 699
    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendPostals(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 701
    :cond_3
    iget-boolean v1, p0, Lcom/android/vcard/VCardComposer;->IS_PBAP_FILTER_EMAIL:Z

    if-eqz v1, :cond_4

    .line 703
    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendEmails(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 705
    :cond_4
    iget-boolean v1, p0, Lcom/android/vcard/VCardComposer;->IS_PBAP_FILTER_TITLE:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/vcard/VCardComposer;->IS_PBAP_FILTER_ORG:Z

    if-eqz v1, :cond_6

    .line 707
    :cond_5
    const-string v1, "vnd.android.cursor.item/organization"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendOrganizations(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 709
    :cond_6
    iget-boolean v1, p0, Lcom/android/vcard/VCardComposer;->IS_PBAP_FILTER_NOTE:Z

    if-eqz v1, :cond_7

    .line 711
    const-string v1, "vnd.android.cursor.item/note"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendNotes(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 713
    :cond_7
    iget-boolean v1, p0, Lcom/android/vcard/VCardComposer;->IS_PBAP_FILTER_URL:Z

    if-eqz v1, :cond_8

    .line 715
    const-string v1, "vnd.android.cursor.item/website"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendWebsites(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 717
    :cond_8
    iget-boolean v1, p0, Lcom/android/vcard/VCardComposer;->IS_PBAP_FILTER_NICKNAME:Z

    if-eqz v1, :cond_9

    .line 719
    const-string v1, "vnd.android.cursor.item/nickname"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendNickNames(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 760
    :cond_9
    :goto_2
    const-string v1, "VCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BTUI] [PBAP] buildVCard : builder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/vcard/VCardBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-virtual {v0}, Lcom/android/vcard/VCardBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 674
    .end local v0           #builder:Lcom/android/vcard/VCardBuilder;
    :cond_a
    invoke-static {}, Lcom/android/vcard/SystemConfig;->isKorea()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 676
    new-instance v0, Lcom/android/vcard/VCardBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/vcard/VCardBuilder;-><init>(ILjava/lang/String;)V

    .restart local v0       #builder:Lcom/android/vcard/VCardBuilder;
    goto/16 :goto_1

    .line 680
    .end local v0           #builder:Lcom/android/vcard/VCardBuilder;
    :cond_b
    new-instance v0, Lcom/android/vcard/VCardBuilder;

    iget v1, p0, Lcom/android/vcard/VCardComposer;->mVCardType:I

    iget-object v2, p0, Lcom/android/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/vcard/VCardBuilder;-><init>(ILjava/lang/String;)V

    .restart local v0       #builder:Lcom/android/vcard/VCardBuilder;
    goto/16 :goto_1

    .line 724
    :cond_c
    const-string v1, "vnd.android.cursor.item/name"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendNameProperties(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v2

    const-string v1, "vnd.android.cursor.item/nickname"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/android/vcard/VCardBuilder;->appendNickNames(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v2

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v3, p0, Lcom/android/vcard/VCardComposer;->mPhoneTranslationCallback:Lcom/android/vcard/VCardPhoneNumberTranslationCallback;

    invoke-virtual {v2, v1, v3}, Lcom/android/vcard/VCardBuilder;->appendPhones(Ljava/util/List;Lcom/android/vcard/VCardPhoneNumberTranslationCallback;)Lcom/android/vcard/VCardBuilder;

    move-result-object v2

    const-string v1, "vnd.android.cursor.item/email_v2"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/android/vcard/VCardBuilder;->appendEmails(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v2

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/android/vcard/VCardBuilder;->appendPostals(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v2

    const-string v1, "vnd.android.cursor.item/organization"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/android/vcard/VCardBuilder;->appendOrganizations(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v2

    const-string v1, "vnd.android.cursor.item/website"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/android/vcard/VCardBuilder;->appendWebsites(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 732
    iget v1, p0, Lcom/android/vcard/VCardComposer;->mVCardType:I

    const/high16 v2, 0x80

    and-int/2addr v1, v2

    if-nez v1, :cond_d

    .line 733
    const-string v1, "vnd.android.cursor.item/photo"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendPhotos(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    .line 735
    :cond_d
    const-string v1, "vnd.android.cursor.item/note"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/vcard/VCardBuilder;->appendNotes(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v2

    const-string v1, "vnd.android.cursor.item/contact_event"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/android/vcard/VCardBuilder;->appendEvents(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v2

    const-string v1, "vnd.android.cursor.item/im"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/android/vcard/VCardBuilder;->appendIms(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v2

    const-string v1, "vnd.android.cursor.item/sip_address"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/android/vcard/VCardBuilder;->appendSipAddresses(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    move-result-object v2

    const-string v1, "vnd.android.cursor.item/relation"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/android/vcard/VCardBuilder;->appendRelation(Ljava/util/List;)Lcom/android/vcard/VCardBuilder;

    goto/16 :goto_2
.end method

.method public createOneEntry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 546
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vcard/VCardComposer;->createOneEntry(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createOneEntry(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 3
    .parameter "getEntityIteratorMethod"

    .prologue
    .line 553
    iget-boolean v1, p0, Lcom/android/vcard/VCardComposer;->mIsDoCoMo:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/vcard/VCardComposer;->mFirstVCardEmittedInDoCoMoCase:Z

    if-nez v1, :cond_0

    .line 554
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/vcard/VCardComposer;->mFirstVCardEmittedInDoCoMoCase:Z

    .line 562
    :cond_0
    iget-object v1, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/vcard/VCardComposer;->mIdColumn:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/vcard/VCardComposer;->createOneEntryInternal(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, vcard:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 565
    const-string v1, "VCardComposer"

    const-string v2, "Cursor#moveToNext() returned false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_1
    return-object v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 784
    :try_start_0
    iget-boolean v0, p0, Lcom/android/vcard/VCardComposer;->mTerminateCalled:Z

    if-nez v0, :cond_0

    .line 785
    const-string v0, "VCardComposer"

    const-string v1, "finalized() is called before terminate() being called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 790
    return-void

    .line 788
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 799
    const-string v0, "VCardComposer"

    const-string v1, "This object is not ready yet."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    const/4 v0, 0x0

    .line 802
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getErrorReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "contentUri"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 371
    sget-object v2, Lcom/android/vcard/VCardComposer;->sContactsProjection:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 3
    .parameter "contentUri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "contentUriForRawContactsEntity"

    .prologue
    const/4 v0, 0x0

    .line 434
    const-string v1, "com.android.contacts"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 436
    const-string v1, "The Uri vCard composer received is not supported by the composer."

    iput-object v1, p0, Lcom/android/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    .line 463
    :cond_0
    :goto_0
    return v0

    .line 440
    :cond_1
    invoke-direct {p0, p6}, Lcom/android/vcard/VCardComposer;->initInterFirstPart(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    invoke-direct/range {p0 .. p5}, Lcom/android/vcard/VCardComposer;->initInterCursorCreationPart(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    invoke-direct {p0}, Lcom/android/vcard/VCardComposer;->initInterMainPart()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    invoke-direct {p0}, Lcom/android/vcard/VCardComposer;->initInterLastPart()Z

    move-result v0

    if-nez v0, :cond_2

    .line 463
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAfterLast()Z
    .locals 2

    .prologue
    .line 810
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 811
    const-string v0, "VCardComposer"

    const-string v1, "This object is not ready yet."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    const/4 v0, 0x0

    .line 814
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    goto :goto_0
.end method

.method public setContactIdColumnId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 831
    iput-object p1, p0, Lcom/android/vcard/VCardComposer;->mContactIdColumnId:Ljava/lang/String;

    .line 832
    return-void
.end method

.method public setPhoneNumberTranslationCallback(Lcom/android/vcard/VCardPhoneNumberTranslationCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 652
    iput-object p1, p0, Lcom/android/vcard/VCardComposer;->mPhoneTranslationCallback:Lcom/android/vcard/VCardPhoneNumberTranslationCallback;

    .line 653
    return-void
.end method

.method public terminate()V
    .locals 1

    .prologue
    .line 766
    invoke-direct {p0}, Lcom/android/vcard/VCardComposer;->closeCursorIfAppropriate()V

    .line 767
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vcard/VCardComposer;->mTerminateCalled:Z

    .line 768
    return-void
.end method
