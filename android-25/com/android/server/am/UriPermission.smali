.class final Lcom/android/server/am/UriPermission;
.super Ljava/lang/Object;
.source "UriPermission.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UriPermission$PersistedTimeComparator;,
        Lcom/android/server/am/UriPermission$Snapshot;
    }
.end annotation


# static fields
.field private static final INVALID_TIME:J = -0x8000000000000000L

.field public static final STRENGTH_GLOBAL:I = 0x2

.field public static final STRENGTH_NONE:I = 0x0

.field public static final STRENGTH_OWNED:I = 0x1

.field public static final STRENGTH_PERSISTABLE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "UriPermission"


# instance fields
.field globalModeFlags:I

.field private mReadOwners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/UriPermissionOwner;",
            ">;"
        }
    .end annotation
.end field

.field private mWriteOwners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Lcom/android/server/am/UriPermissionOwner;",
            ">;"
        }
    .end annotation
.end field

.field modeFlags:I

.field ownedModeFlags:I

.field persistableModeFlags:I

.field persistedCreateTime:J

.field persistedModeFlags:I

.field final sourcePkg:Ljava/lang/String;

.field private stringName:Ljava/lang/String;

.field final targetPkg:Ljava/lang/String;

.field final targetUid:I

.field final targetUserId:I

.field final uri:Lcom/android/server/am/ActivityManagerService$GrantUri;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/am/ActivityManagerService$GrantUri;)V
    .locals 2
    .param p1, "sourcePkg"    # Ljava/lang/String;
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "targetUid"    # I
    .param p4, "uri"    # Lcom/android/server/am/ActivityManagerService$GrantUri;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 63
    iput v0, p0, Lcom/android/server/am/UriPermission;->modeFlags:I

    #@6
    .line 66
    iput v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    #@8
    .line 68
    iput v0, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    #@a
    .line 70
    iput v0, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    #@c
    .line 73
    iput v0, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    #@e
    .line 79
    const-wide/high16 v0, -0x8000000000000000L

    #@10
    iput-wide v0, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    #@12
    .line 89
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    #@15
    move-result v0

    #@16
    iput v0, p0, Lcom/android/server/am/UriPermission;->targetUserId:I

    #@18
    .line 90
    iput-object p1, p0, Lcom/android/server/am/UriPermission;->sourcePkg:Ljava/lang/String;

    #@1a
    .line 91
    iput-object p2, p0, Lcom/android/server/am/UriPermission;->targetPkg:Ljava/lang/String;

    #@1c
    .line 92
    iput p3, p0, Lcom/android/server/am/UriPermission;->targetUid:I

    #@1e
    .line 93
    iput-object p4, p0, Lcom/android/server/am/UriPermission;->uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    #@20
    .line 88
    return-void
.end method

.method private addReadOwner(Lcom/android/server/am/UriPermissionOwner;)V
    .locals 1
    .param p1, "owner"    # Lcom/android/server/am/UriPermissionOwner;

    #@0
    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 255
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    #@a
    .line 256
    iget v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    #@c
    or-int/lit8 v0, v0, 0x1

    #@e
    iput v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    #@10
    .line 257
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    #@13
    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    #@15
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 260
    invoke-virtual {p1, p0}, Lcom/android/server/am/UriPermissionOwner;->addReadPermission(Lcom/android/server/am/UriPermission;)V

    #@1e
    .line 253
    :cond_1
    return-void
.end method

.method private addWriteOwner(Lcom/android/server/am/UriPermissionOwner;)V
    .locals 1
    .param p1, "owner"    # Lcom/android/server/am/UriPermissionOwner;

    #@0
    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 280
    invoke-static {}, Lcom/google/android/collect/Sets;->newArraySet()Landroid/util/ArraySet;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    #@a
    .line 281
    iget v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    #@c
    or-int/lit8 v0, v0, 0x2

    #@e
    iput v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    #@10
    .line 282
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    #@13
    .line 284
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    #@15
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    #@18
    move-result v0

    #@19
    if-eqz v0, :cond_1

    #@1b
    .line 285
    invoke-virtual {p1, p0}, Lcom/android/server/am/UriPermissionOwner;->addWritePermission(Lcom/android/server/am/UriPermission;)V

    #@1e
    .line 278
    :cond_1
    return-void
.end method

.method private updateModeFlags()V
    .locals 4

    #@0
    .prologue
    .line 97
    iget v0, p0, Lcom/android/server/am/UriPermission;->modeFlags:I

    #@2
    .line 98
    .local v0, "oldModeFlags":I
    iget v1, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    #@4
    iget v2, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    #@6
    or-int/2addr v1, v2

    #@7
    iget v2, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    #@9
    or-int/2addr v1, v2

    #@a
    iget v2, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    #@c
    or-int/2addr v1, v2

    #@d
    iput v1, p0, Lcom/android/server/am/UriPermission;->modeFlags:I

    #@f
    .line 100
    const-string/jumbo v1, "UriPermission"

    #@12
    const/4 v2, 0x2

    #@13
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_0

    #@19
    iget v1, p0, Lcom/android/server/am/UriPermission;->modeFlags:I

    #@1b
    if-eq v1, v0, :cond_0

    #@1d
    .line 101
    const-string/jumbo v1, "UriPermission"

    #@20
    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v3, "Permission for "

    #@28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    iget-object v3, p0, Lcom/android/server/am/UriPermission;->targetPkg:Ljava/lang/String;

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    const-string/jumbo v3, " to "

    #@35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    iget-object v3, p0, Lcom/android/server/am/UriPermission;->uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    const-string/jumbo v3, " is changing from 0x"

    #@42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v2

    #@46
    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@49
    move-result-object v3

    #@4a
    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    .line 103
    const-string/jumbo v3, " to 0x"

    #@51
    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v2

    #@55
    .line 104
    iget v3, p0, Lcom/android/server/am/UriPermission;->modeFlags:I

    #@57
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v2

    #@5f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v2

    #@63
    .line 105
    new-instance v3, Ljava/lang/Throwable;

    #@65
    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    #@68
    .line 101
    invoke-static {v1, v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6b
    .line 96
    :cond_0
    return-void
.end method


# virtual methods
.method public buildPersistedPublicApiObject()Landroid/content/UriPermission;
    .locals 6

    #@0
    .prologue
    .line 386
    new-instance v0, Landroid/content/UriPermission;

    #@2
    iget-object v1, p0, Lcom/android/server/am/UriPermission;->uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    #@4
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService$GrantUri;->uri:Landroid/net/Uri;

    #@6
    iget v2, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    #@8
    iget-wide v4, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    #@a
    invoke-direct {v0, v1, v2, v4, v5}, Landroid/content/UriPermission;-><init>(Landroid/net/Uri;IJ)V

    #@d
    return-object v0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 318
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v3, "targetUserId="

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v2

    #@f
    iget v3, p0, Lcom/android/server/am/UriPermission;->targetUserId:I

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1c
    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, " sourcePkg="

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    iget-object v3, p0, Lcom/android/server/am/UriPermission;->sourcePkg:Ljava/lang/String;

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@35
    .line 321
    new-instance v2, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    const-string/jumbo v3, " targetPkg="

    #@3d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v2

    #@41
    iget-object v3, p0, Lcom/android/server/am/UriPermission;->targetPkg:Ljava/lang/String;

    #@43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v2

    #@47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4e
    .line 323
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@51
    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v3, "mode=0x"

    #@59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v2

    #@5d
    iget v3, p0, Lcom/android/server/am/UriPermission;->modeFlags:I

    #@5f
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@62
    move-result-object v3

    #@63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v2

    #@67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v2

    #@6b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6e
    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    const-string/jumbo v3, " owned=0x"

    #@76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v2

    #@7a
    iget v3, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    #@7c
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@7f
    move-result-object v3

    #@80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v2

    #@84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v2

    #@88
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8b
    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    const-string/jumbo v3, " global=0x"

    #@93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v2

    #@97
    iget v3, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    #@99
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@9c
    move-result-object v3

    #@9d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v2

    #@a1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a4
    move-result-object v2

    #@a5
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a8
    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    const-string/jumbo v3, " persistable=0x"

    #@b0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v2

    #@b4
    iget v3, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    #@b6
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@b9
    move-result-object v3

    #@ba
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v2

    #@be
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c1
    move-result-object v2

    #@c2
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c5
    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    #@c7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ca
    const-string/jumbo v3, " persisted=0x"

    #@cd
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v2

    #@d1
    iget v3, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    #@d3
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@d6
    move-result-object v3

    #@d7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v2

    #@db
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@de
    move-result-object v2

    #@df
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@e2
    .line 329
    iget-wide v2, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    #@e4
    const-wide/high16 v4, -0x8000000000000000L

    #@e6
    cmp-long v2, v2, v4

    #@e8
    if-eqz v2, :cond_0

    #@ea
    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    #@ec
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ef
    const-string/jumbo v3, " persistedCreate="

    #@f2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v2

    #@f6
    iget-wide v4, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    #@f8
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v2

    #@fc
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ff
    move-result-object v2

    #@100
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@103
    .line 332
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    #@106
    .line 334
    iget-object v2, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    #@108
    if-eqz v2, :cond_1

    #@10a
    .line 335
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@10d
    .line 336
    const-string/jumbo v2, "readOwners:"

    #@110
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@113
    .line 337
    iget-object v2, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    #@115
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@118
    move-result-object v1

    #@119
    .local v1, "owner$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11c
    move-result v2

    #@11d
    if-eqz v2, :cond_1

    #@11f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@122
    move-result-object v0

    #@123
    check-cast v0, Lcom/android/server/am/UriPermissionOwner;

    #@125
    .line 338
    .local v0, "owner":Lcom/android/server/am/UriPermissionOwner;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@128
    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    #@12a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@12d
    const-string/jumbo v3, "  * "

    #@130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v2

    #@134
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v2

    #@138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13b
    move-result-object v2

    #@13c
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@13f
    goto :goto_0

    #@140
    .line 342
    .end local v0    # "owner":Lcom/android/server/am/UriPermissionOwner;
    .end local v1    # "owner$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    #@142
    if-eqz v2, :cond_2

    #@144
    .line 343
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@147
    .line 344
    const-string/jumbo v2, "writeOwners:"

    #@14a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@14d
    .line 345
    iget-object v2, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    #@14f
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@152
    move-result-object v1

    #@153
    .restart local v1    # "owner$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@156
    move-result v2

    #@157
    if-eqz v2, :cond_2

    #@159
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15c
    move-result-object v0

    #@15d
    check-cast v0, Lcom/android/server/am/UriPermissionOwner;

    #@15f
    .line 346
    .restart local v0    # "owner":Lcom/android/server/am/UriPermissionOwner;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@162
    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    #@164
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@167
    const-string/jumbo v3, "  * "

    #@16a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v2

    #@16e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@171
    move-result-object v2

    #@172
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@175
    move-result-object v2

    #@176
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@179
    goto :goto_1

    #@17a
    .line 317
    .end local v0    # "owner":Lcom/android/server/am/UriPermissionOwner;
    .end local v1    # "owner$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public getStrength(I)I
    .locals 1
    .param p1, "modeFlags"    # I

    #@0
    .prologue
    .line 240
    and-int/lit8 p1, p1, 0x3

    #@2
    .line 242
    iget v0, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    #@4
    and-int/2addr v0, p1

    #@5
    if-ne v0, p1, :cond_0

    #@7
    .line 243
    const/4 v0, 0x3

    #@8
    return v0

    #@9
    .line 244
    :cond_0
    iget v0, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    #@b
    and-int/2addr v0, p1

    #@c
    if-ne v0, p1, :cond_1

    #@e
    .line 245
    const/4 v0, 0x2

    #@f
    return v0

    #@10
    .line 246
    :cond_1
    iget v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    #@12
    and-int/2addr v0, p1

    #@13
    if-ne v0, p1, :cond_2

    #@15
    .line 247
    const/4 v0, 0x1

    #@16
    return v0

    #@17
    .line 249
    :cond_2
    const/4 v0, 0x0

    #@18
    return v0
.end method

.method grantModes(ILcom/android/server/am/UriPermissionOwner;)V
    .locals 2
    .param p1, "modeFlags"    # I
    .param p2, "owner"    # Lcom/android/server/am/UriPermissionOwner;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 125
    and-int/lit8 v1, p1, 0x40

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    .line 126
    .local v0, "persistable":Z
    :cond_0
    and-int/lit8 p1, p1, 0x3

    #@8
    .line 129
    if-eqz v0, :cond_1

    #@a
    .line 130
    iget v1, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    #@c
    or-int/2addr v1, p1

    #@d
    iput v1, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    #@f
    .line 133
    :cond_1
    if-nez p2, :cond_3

    #@11
    .line 134
    iget v1, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    #@13
    or-int/2addr v1, p1

    #@14
    iput v1, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    #@16
    .line 144
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    #@19
    .line 124
    return-void

    #@1a
    .line 136
    :cond_3
    and-int/lit8 v1, p1, 0x1

    #@1c
    if-eqz v1, :cond_4

    #@1e
    .line 137
    invoke-direct {p0, p2}, Lcom/android/server/am/UriPermission;->addReadOwner(Lcom/android/server/am/UriPermissionOwner;)V

    #@21
    .line 139
    :cond_4
    and-int/lit8 v1, p1, 0x2

    #@23
    if-eqz v1, :cond_2

    #@25
    .line 140
    invoke-direct {p0, p2}, Lcom/android/server/am/UriPermission;->addWriteOwner(Lcom/android/server/am/UriPermissionOwner;)V

    #@28
    goto :goto_0
.end method

.method initPersistedModes(IJ)V
    .locals 0
    .param p1, "modeFlags"    # I
    .param p2, "createdTime"    # J

    #@0
    .prologue
    .line 114
    and-int/lit8 p1, p1, 0x3

    #@2
    .line 117
    iput p1, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    #@4
    .line 118
    iput p1, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    #@6
    .line 119
    iput-wide p2, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    #@8
    .line 121
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    #@b
    .line 113
    return-void
.end method

.method releasePersistableModes(I)Z
    .locals 4
    .param p1, "modeFlags"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 173
    and-int/lit8 p1, p1, 0x3

    #@3
    .line 176
    iget v0, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    #@5
    .line 178
    .local v0, "before":I
    iget v2, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    #@7
    not-int v3, p1

    #@8
    and-int/2addr v2, v3

    #@9
    iput v2, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    #@b
    .line 179
    iget v2, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    #@d
    not-int v3, p1

    #@e
    and-int/2addr v2, v3

    #@f
    iput v2, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    #@11
    .line 181
    iget v2, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    #@13
    if-nez v2, :cond_0

    #@15
    .line 182
    const-wide/high16 v2, -0x8000000000000000L

    #@17
    iput-wide v2, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    #@19
    .line 185
    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    #@1c
    .line 186
    iget v2, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    #@1e
    if-eq v2, v0, :cond_1

    #@20
    const/4 v1, 0x1

    #@21
    :cond_1
    return v1
.end method

.method removeReadOwner(Lcom/android/server/am/UriPermissionOwner;)V
    .locals 3
    .param p1, "owner"    # Lcom/android/server/am/UriPermissionOwner;

    #@0
    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 269
    const-string/jumbo v0, "UriPermission"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Unknown read owner "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string/jumbo v2, " in "

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 271
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    #@2f
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    #@32
    move-result v0

    #@33
    if-nez v0, :cond_1

    #@35
    .line 272
    const/4 v0, 0x0

    #@36
    iput-object v0, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    #@38
    .line 273
    iget v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    #@3a
    and-int/lit8 v0, v0, -0x2

    #@3c
    iput v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    #@3e
    .line 274
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    #@41
    .line 267
    :cond_1
    return-void
.end method

.method removeWriteOwner(Lcom/android/server/am/UriPermissionOwner;)V
    .locals 3
    .param p1, "owner"    # Lcom/android/server/am/UriPermissionOwner;

    #@0
    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 294
    const-string/jumbo v0, "UriPermission"

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "Unknown write owner "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    const-string/jumbo v2, " in "

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    #@2d
    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    #@2f
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    #@32
    move-result v0

    #@33
    if-nez v0, :cond_1

    #@35
    .line 297
    const/4 v0, 0x0

    #@36
    iput-object v0, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    #@38
    .line 298
    iget v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    #@3a
    and-int/lit8 v0, v0, -0x3

    #@3c
    iput v0, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    #@3e
    .line 299
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    #@41
    .line 292
    :cond_1
    return-void
.end method

.method revokeModes(IZ)Z
    .locals 8
    .param p1, "modeFlags"    # I
    .param p2, "includingOwners"    # Z

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    .line 193
    and-int/lit8 v5, p1, 0x40

    #@4
    if-eqz v5, :cond_1

    #@6
    const/4 v1, 0x1

    #@7
    .line 194
    .local v1, "persistable":Z
    :goto_0
    and-int/lit8 p1, p1, 0x3

    #@9
    .line 197
    iget v0, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    #@b
    .line 199
    .local v0, "before":I
    and-int/lit8 v5, p1, 0x1

    #@d
    if-eqz v5, :cond_3

    #@f
    .line 200
    if-eqz v1, :cond_0

    #@11
    .line 201
    iget v5, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    #@13
    and-int/lit8 v5, v5, -0x2

    #@15
    iput v5, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    #@17
    .line 202
    iget v5, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    #@19
    and-int/lit8 v5, v5, -0x2

    #@1b
    iput v5, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    #@1d
    .line 204
    :cond_0
    iget v5, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    #@1f
    and-int/lit8 v5, v5, -0x2

    #@21
    iput v5, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    #@23
    .line 205
    iget-object v5, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    #@25
    if-eqz v5, :cond_3

    #@27
    if-eqz p2, :cond_3

    #@29
    .line 206
    iget v5, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    #@2b
    and-int/lit8 v5, v5, -0x2

    #@2d
    iput v5, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    #@2f
    .line 207
    iget-object v5, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    #@31
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@34
    move-result-object v3

    #@35
    .local v3, "r$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@38
    move-result v5

    #@39
    if-eqz v5, :cond_2

    #@3b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3e
    move-result-object v2

    #@3f
    check-cast v2, Lcom/android/server/am/UriPermissionOwner;

    #@41
    .line 208
    .local v2, "r":Lcom/android/server/am/UriPermissionOwner;
    invoke-virtual {v2, p0}, Lcom/android/server/am/UriPermissionOwner;->removeReadPermission(Lcom/android/server/am/UriPermission;)V

    #@44
    goto :goto_1

    #@45
    .line 193
    .end local v0    # "before":I
    .end local v1    # "persistable":Z
    .end local v2    # "r":Lcom/android/server/am/UriPermissionOwner;
    .end local v3    # "r$iterator":Ljava/util/Iterator;
    :cond_1
    const/4 v1, 0x0

    #@46
    .restart local v1    # "persistable":Z
    goto :goto_0

    #@47
    .line 210
    .restart local v0    # "before":I
    .restart local v3    # "r$iterator":Ljava/util/Iterator;
    :cond_2
    iput-object v6, p0, Lcom/android/server/am/UriPermission;->mReadOwners:Landroid/util/ArraySet;

    #@49
    .line 213
    .end local v3    # "r$iterator":Ljava/util/Iterator;
    :cond_3
    and-int/lit8 v5, p1, 0x2

    #@4b
    if-eqz v5, :cond_6

    #@4d
    .line 214
    if-eqz v1, :cond_4

    #@4f
    .line 215
    iget v5, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    #@51
    and-int/lit8 v5, v5, -0x3

    #@53
    iput v5, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    #@55
    .line 216
    iget v5, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    #@57
    and-int/lit8 v5, v5, -0x3

    #@59
    iput v5, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    #@5b
    .line 218
    :cond_4
    iget v5, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    #@5d
    and-int/lit8 v5, v5, -0x3

    #@5f
    iput v5, p0, Lcom/android/server/am/UriPermission;->globalModeFlags:I

    #@61
    .line 219
    iget-object v5, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    #@63
    if-eqz v5, :cond_6

    #@65
    if-eqz p2, :cond_6

    #@67
    .line 220
    iget v5, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    #@69
    and-int/lit8 v5, v5, -0x3

    #@6b
    iput v5, p0, Lcom/android/server/am/UriPermission;->ownedModeFlags:I

    #@6d
    .line 221
    iget-object v5, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    #@6f
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@72
    move-result-object v3

    #@73
    .restart local v3    # "r$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@76
    move-result v5

    #@77
    if-eqz v5, :cond_5

    #@79
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7c
    move-result-object v2

    #@7d
    check-cast v2, Lcom/android/server/am/UriPermissionOwner;

    #@7f
    .line 222
    .restart local v2    # "r":Lcom/android/server/am/UriPermissionOwner;
    invoke-virtual {v2, p0}, Lcom/android/server/am/UriPermissionOwner;->removeWritePermission(Lcom/android/server/am/UriPermission;)V

    #@82
    goto :goto_2

    #@83
    .line 224
    .end local v2    # "r":Lcom/android/server/am/UriPermissionOwner;
    :cond_5
    iput-object v6, p0, Lcom/android/server/am/UriPermission;->mWriteOwners:Landroid/util/ArraySet;

    #@85
    .line 228
    .end local v3    # "r$iterator":Ljava/util/Iterator;
    :cond_6
    iget v5, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    #@87
    if-nez v5, :cond_7

    #@89
    .line 229
    const-wide/high16 v6, -0x8000000000000000L

    #@8b
    iput-wide v6, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    #@8d
    .line 232
    :cond_7
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    #@90
    .line 233
    iget v5, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    #@92
    if-eq v5, v0, :cond_8

    #@94
    const/4 v4, 0x1

    #@95
    :cond_8
    return v4
.end method

.method public snapshot()Lcom/android/server/am/UriPermission$Snapshot;
    .locals 2

    #@0
    .prologue
    .line 382
    new-instance v0, Lcom/android/server/am/UriPermission$Snapshot;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Lcom/android/server/am/UriPermission$Snapshot;-><init>(Lcom/android/server/am/UriPermission;Lcom/android/server/am/UriPermission$Snapshot;)V

    #@6
    return-object v0
.end method

.method takePersistableModes(I)Z
    .locals 5
    .param p1, "modeFlags"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 151
    and-int/lit8 p1, p1, 0x3

    #@3
    .line 154
    iget v2, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    #@5
    and-int/2addr v2, p1

    #@6
    if-eq v2, p1, :cond_0

    #@8
    .line 155
    const-string/jumbo v2, "UriPermission"

    #@b
    new-instance v3, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v4, "Requested flags 0x"

    #@13
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v3

    #@17
    .line 156
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    .line 155
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    .line 156
    const-string/jumbo v4, ", but only 0x"

    #@22
    .line 155
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    .line 157
    iget v4, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    #@28
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    .line 155
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    .line 157
    const-string/jumbo v4, " are allowed"

    #@33
    .line 155
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@3e
    .line 158
    return v1

    #@3f
    .line 161
    :cond_0
    iget v0, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    #@41
    .line 162
    .local v0, "before":I
    iget v2, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    #@43
    iget v3, p0, Lcom/android/server/am/UriPermission;->persistableModeFlags:I

    #@45
    and-int/2addr v3, p1

    #@46
    or-int/2addr v2, v3

    #@47
    iput v2, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    #@49
    .line 164
    iget v2, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    #@4b
    if-eqz v2, :cond_1

    #@4d
    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@50
    move-result-wide v2

    #@51
    iput-wide v2, p0, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    #@53
    .line 168
    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/UriPermission;->updateModeFlags()V

    #@56
    .line 169
    iget v2, p0, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    #@58
    if-eq v2, v0, :cond_2

    #@5a
    const/4 v1, 0x1

    #@5b
    :cond_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 305
    iget-object v1, p0, Lcom/android/server/am/UriPermission;->stringName:Ljava/lang/String;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 306
    iget-object v1, p0, Lcom/android/server/am/UriPermission;->stringName:Ljava/lang/String;

    #@6
    return-object v1

    #@7
    .line 308
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    const/16 v1, 0x80

    #@b
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@e
    .line 309
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "UriPermission{"

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    .line 310
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@17
    move-result v1

    #@18
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 311
    const/16 v1, 0x20

    #@21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@24
    .line 312
    iget-object v1, p0, Lcom/android/server/am/UriPermission;->uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@29
    .line 313
    const/16 v1, 0x7d

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2e
    .line 314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    iput-object v1, p0, Lcom/android/server/am/UriPermission;->stringName:Ljava/lang/String;

    #@34
    return-object v1
.end method
