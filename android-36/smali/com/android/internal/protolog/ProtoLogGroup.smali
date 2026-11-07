.class public Lcom/android/internal/protolog/ProtoLogGroup;
.super Ljava/lang/Object;
.source "ProtoLogGroup.java"

# interfaces
.implements Lcom/android/internal/protolog/common/IProtoLogGroup;


# instance fields
.field private final blacklist mEnabled:Z

.field private blacklist mLogToLogcat:Z

.field private blacklist mLogToProto:Z

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mTag:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0, p1, p1}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;

    .line 39
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 40
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "enabled"    # Z

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mName:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mTag:Ljava/lang/String;

    .line 45
    iput-boolean p3, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mEnabled:Z

    .line 46
    iput-boolean p3, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mLogToProto:Z

    .line 47
    iput-boolean p3, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mLogToLogcat:Z

    .line 48
    return-void
.end method


# virtual methods
.method public blacklist getId()I
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist getTag()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isEnabled()Z
    .registers 2

    .line 52
    iget-boolean v0, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mEnabled:Z

    return v0
.end method

.method public blacklist isLogToLogcat()Z
    .registers 2

    .line 63
    iget-boolean v0, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mLogToLogcat:Z

    return v0
.end method

.method public blacklist isLogToProto()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 58
    iget-boolean v0, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mLogToProto:Z

    return v0
.end method

.method public blacklist name()Ljava/lang/String;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setLogToLogcat(Z)V
    .registers 2
    .param p1, "logToLogcat"    # Z

    .line 80
    iput-boolean p1, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mLogToLogcat:Z

    .line 81
    return-void
.end method

.method public blacklist setLogToProto(Z)V
    .registers 2
    .param p1, "logToProto"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 75
    iput-boolean p1, p0, Lcom/android/internal/protolog/ProtoLogGroup;->mLogToProto:Z

    .line 76
    return-void
.end method
