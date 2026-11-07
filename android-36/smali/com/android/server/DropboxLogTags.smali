.class public Lcom/android/server/DropboxLogTags;
.super Ljava/lang/Object;
.source "DropboxLogTags.java"


# static fields
.field public static final blacklist DROPBOX_FILE_COPY:I = 0x13c6a


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist writeDropboxFileCopy(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "size"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0, p2}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x13c6a

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 18
    return-void
.end method
