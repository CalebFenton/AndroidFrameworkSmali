.class Landroid/graphics/text/LineBreakConfig$1;
.super Ljava/lang/Object;
.source "LineBreakConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/text/LineBreakConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/graphics/text/LineBreakConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/graphics/text/LineBreakConfig;
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .line 643
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 644
    .local v0, "lineBreakStyle":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 645
    .local v1, "lineBreakWordStyle":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 646
    .local v2, "hyphenation":I
    new-instance v3, Landroid/graphics/text/LineBreakConfig;

    invoke-direct {v3, v0, v1, v2}, Landroid/graphics/text/LineBreakConfig;-><init>(III)V

    return-object v3
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 639
    invoke-virtual {p0, p1}, Landroid/graphics/text/LineBreakConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/graphics/text/LineBreakConfig;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/graphics/text/LineBreakConfig;
    .registers 3
    .param p1, "size"    # I

    .line 651
    new-array v0, p1, [Landroid/graphics/text/LineBreakConfig;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 639
    invoke-virtual {p0, p1}, Landroid/graphics/text/LineBreakConfig$1;->newArray(I)[Landroid/graphics/text/LineBreakConfig;

    move-result-object p1

    return-object p1
.end method
