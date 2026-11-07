.class public abstract Landroid/media/internal/exo/metadata/id3/Id3Frame;
.super Ljava/lang/Object;
.source "Id3Frame.java"

# interfaces
.implements Landroid/media/internal/exo/metadata/Metadata$Entry;


# instance fields
.field public final blacklist id:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Landroid/media/internal/exo/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 32
    iget-object p0, p0, Landroid/media/internal/exo/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    return-object p0
.end method
