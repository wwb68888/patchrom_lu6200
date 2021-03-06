.class public Lcom/broadcom/bt/util/io/filefilter/WildcardFilter;
.super Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;
.source "WildcardFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final wildcards:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "wildcard"

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;-><init>()V

    .line 82
    if-nez p1, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The wildcard must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/broadcom/bt/util/io/filefilter/WildcardFilter;->wildcards:[Ljava/lang/String;

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .parameter "wildcards"

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;-><init>()V

    .line 109
    if-nez p1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The wildcard list must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/broadcom/bt/util/io/filefilter/WildcardFilter;->wildcards:[Ljava/lang/String;

    .line 113
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 2
    .parameter "wildcards"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/broadcom/bt/util/io/filefilter/AbstractFileFilter;-><init>()V

    .line 95
    if-nez p1, :cond_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The wildcard array must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    iput-object p1, p0, Lcom/broadcom/bt/util/io/filefilter/WildcardFilter;->wildcards:[Ljava/lang/String;

    .line 99
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 4
    .parameter "file"

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v1

    .line 148
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/broadcom/bt/util/io/filefilter/WildcardFilter;->wildcards:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 149
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/util/io/filefilter/WildcardFilter;->wildcards:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v2, v3}, Lcom/broadcom/bt/util/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    const/4 v1, 0x1

    goto :goto_0

    .line 148
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3
    .parameter "dir"
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 124
    if-eqz p1, :cond_1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v1

    .line 128
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/broadcom/bt/util/io/filefilter/WildcardFilter;->wildcards:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/broadcom/bt/util/io/filefilter/WildcardFilter;->wildcards:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {p2, v2}, Lcom/broadcom/bt/util/io/FilenameUtils;->wildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    const/4 v1, 0x1

    goto :goto_0

    .line 128
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
