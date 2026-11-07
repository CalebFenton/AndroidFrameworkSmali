.class public Landroid/util/HashedStringCache$HashResult;
.super Ljava/lang/Object;
.source "HashedStringCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/HashedStringCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HashResult"
.end annotation


# instance fields
.field public blacklist hashedString:Ljava/lang/String;

.field public blacklist saltGeneration:I


# direct methods
.method public constructor blacklist <init>(Landroid/util/HashedStringCache;Ljava/lang/String;I)V
    .registers 4
    .param p1, "this$0"    # Landroid/util/HashedStringCache;
    .param p2, "hString"    # Ljava/lang/String;
    .param p3, "saltGen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p2, p0, Landroid/util/HashedStringCache$HashResult;->hashedString:Ljava/lang/String;

    .line 207
    iput p3, p0, Landroid/util/HashedStringCache$HashResult;->saltGeneration:I

    .line 208
    return-void
.end method
