.class public Lcom/android/server/am/UriPermission$Snapshot;
.super Ljava/lang/Object;
.source "UriPermission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UriPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Snapshot"
.end annotation


# instance fields
.field final persistedCreateTime:J

.field final persistedModeFlags:I

.field final sourcePkg:Ljava/lang/String;

.field final targetPkg:Ljava/lang/String;

.field final targetUserId:I

.field final uri:Lcom/android/server/am/ActivityManagerService$GrantUri;


# direct methods
.method private constructor <init>(Lcom/android/server/am/UriPermission;)V
    .locals 2
    .param p1, "perm"    # Lcom/android/server/am/UriPermission;

    #@0
    .prologue
    .line 361
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 362
    iget v0, p1, Lcom/android/server/am/UriPermission;->targetUserId:I

    #@5
    iput v0, p0, Lcom/android/server/am/UriPermission$Snapshot;->targetUserId:I

    #@7
    .line 363
    iget-object v0, p1, Lcom/android/server/am/UriPermission;->sourcePkg:Ljava/lang/String;

    #@9
    iput-object v0, p0, Lcom/android/server/am/UriPermission$Snapshot;->sourcePkg:Ljava/lang/String;

    #@b
    .line 364
    iget-object v0, p1, Lcom/android/server/am/UriPermission;->targetPkg:Ljava/lang/String;

    #@d
    iput-object v0, p0, Lcom/android/server/am/UriPermission$Snapshot;->targetPkg:Ljava/lang/String;

    #@f
    .line 365
    iget-object v0, p1, Lcom/android/server/am/UriPermission;->uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    #@11
    iput-object v0, p0, Lcom/android/server/am/UriPermission$Snapshot;->uri:Lcom/android/server/am/ActivityManagerService$GrantUri;

    #@13
    .line 366
    iget v0, p1, Lcom/android/server/am/UriPermission;->persistedModeFlags:I

    #@15
    iput v0, p0, Lcom/android/server/am/UriPermission$Snapshot;->persistedModeFlags:I

    #@17
    .line 367
    iget-wide v0, p1, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    #@19
    iput-wide v0, p0, Lcom/android/server/am/UriPermission$Snapshot;->persistedCreateTime:J

    #@1b
    .line 361
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/UriPermission;Lcom/android/server/am/UriPermission$Snapshot;)V
    .locals 0
    .param p1, "perm"    # Lcom/android/server/am/UriPermission;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/UriPermission$Snapshot;-><init>(Lcom/android/server/am/UriPermission;)V

    #@3
    return-void
.end method
