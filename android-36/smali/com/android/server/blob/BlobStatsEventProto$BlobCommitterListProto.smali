.class public final Lcom/android/server/blob/BlobStatsEventProto$BlobCommitterListProto;
.super Ljava/lang/Object;
.source "BlobStatsEventProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/blob/BlobStatsEventProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BlobCommitterListProto"
.end annotation


# static fields
.field public static final blacklist COMMITTER:J = 0x20b00000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/blob/BlobStatsEventProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/blob/BlobStatsEventProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
