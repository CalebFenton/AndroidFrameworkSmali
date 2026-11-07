.class public final Landroid/media/session/MediaSessionManager$RemoteUserInfo;
.super Ljava/lang/Object;
.source "MediaSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RemoteUserInfo"
.end annotation


# instance fields
.field private final greylist-max-o mPackageName:Ljava/lang/String;

.field private final greylist-max-o mPid:I

.field private final greylist-max-o mUid:I


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 1201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1202
    iput-object p1, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPackageName:Ljava/lang/String;

    .line 1203
    iput p2, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPid:I

    .line 1204
    iput p3, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mUid:I

    .line 1205
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1237
    instance-of v0, p1, Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1238
    return v1

    .line 1240
    :cond_6
    const/4 v0, 0x1

    if-ne p0, p1, :cond_a

    .line 1241
    return v0

    .line 1243
    :cond_a
    move-object v2, p1

    check-cast v2, Landroid/media/session/MediaSessionManager$RemoteUserInfo;

    .line 1244
    .local v2, "otherUserInfo":Landroid/media/session/MediaSessionManager$RemoteUserInfo;
    iget-object v3, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget v3, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPid:I

    iget v4, v2, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPid:I

    if-ne v3, v4, :cond_24

    iget v3, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mUid:I

    iget v4, v2, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mUid:I

    if-ne v3, v4, :cond_24

    move v1, v0

    :cond_24
    return v1
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 1211
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPid()I
    .registers 2

    .line 1218
    iget v0, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPid:I

    return v0
.end method

.method public whitelist getUid()I
    .registers 2

    .line 1225
    iget v0, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mUid:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1251
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPackageName:Ljava/lang/String;

    iget v1, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mPid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/media/session/MediaSessionManager$RemoteUserInfo;->mUid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
