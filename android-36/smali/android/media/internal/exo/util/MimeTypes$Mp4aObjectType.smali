.class final Landroid/media/internal/exo/util/MimeTypes$Mp4aObjectType;
.super Ljava/lang/Object;
.source "MimeTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/exo/util/MimeTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Mp4aObjectType"
.end annotation


# instance fields
.field public final blacklist audioObjectTypeIndication:I

.field public final blacklist objectTypeIndication:I


# direct methods
.method public constructor blacklist <init>(II)V
    .registers 3

    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 702
    iput p1, p0, Landroid/media/internal/exo/util/MimeTypes$Mp4aObjectType;->objectTypeIndication:I

    .line 703
    iput p2, p0, Landroid/media/internal/exo/util/MimeTypes$Mp4aObjectType;->audioObjectTypeIndication:I

    return-void
.end method
