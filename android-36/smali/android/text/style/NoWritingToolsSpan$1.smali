.class Landroid/text/style/NoWritingToolsSpan$1;
.super Ljava/lang/Object;
.source "NoWritingToolsSpan.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/NoWritingToolsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/text/style/NoWritingToolsSpan;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/text/style/NoWritingToolsSpan;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 80
    new-instance v0, Landroid/text/style/NoWritingToolsSpan;

    invoke-direct {v0}, Landroid/text/style/NoWritingToolsSpan;-><init>()V

    return-object v0
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

    .line 76
    invoke-virtual {p0, p1}, Landroid/text/style/NoWritingToolsSpan$1;->createFromParcel(Landroid/os/Parcel;)Landroid/text/style/NoWritingToolsSpan;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/text/style/NoWritingToolsSpan;
    .registers 3
    .param p1, "size"    # I

    .line 85
    new-array v0, p1, [Landroid/text/style/NoWritingToolsSpan;

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

    .line 76
    invoke-virtual {p0, p1}, Landroid/text/style/NoWritingToolsSpan$1;->newArray(I)[Landroid/text/style/NoWritingToolsSpan;

    move-result-object p1

    return-object p1
.end method
