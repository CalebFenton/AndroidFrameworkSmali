.class final Ljava/text/EntryPair;
.super Ljava/lang/Object;
.source "EntryPair.java"


# instance fields
.field public blacklist entryName:Ljava/lang/String;

.field public blacklist fwd:Z

.field public blacklist value:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 53
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/text/EntryPair;-><init>(Ljava/lang/String;IZ)V

    .line 54
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;IZ)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "fwd"    # Z

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Ljava/text/EntryPair;->entryName:Ljava/lang/String;

    .line 57
    iput p2, p0, Ljava/text/EntryPair;->value:I

    .line 58
    iput-boolean p3, p0, Ljava/text/EntryPair;->fwd:Z

    .line 59
    return-void
.end method
