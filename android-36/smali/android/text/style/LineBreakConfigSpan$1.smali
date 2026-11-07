.class Landroid/text/style/LineBreakConfigSpan$1;
.super Ljava/lang/Object;
.source "LineBreakConfigSpan.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/LineBreakConfigSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/text/style/LineBreakConfigSpan;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/text/style/LineBreakConfigSpan;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 136
    const-class v0, Landroid/graphics/text/LineBreakConfig;

    .line 137
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/graphics/text/LineBreakConfig;

    .line 136
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/text/LineBreakConfig;

    .line 138
    .local v0, "lbc":Landroid/graphics/text/LineBreakConfig;
    new-instance v1, Landroid/text/style/LineBreakConfigSpan;

    invoke-direct {v1, v0}, Landroid/text/style/LineBreakConfigSpan;-><init>(Landroid/graphics/text/LineBreakConfig;)V

    return-object v1
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

    .line 132
    invoke-virtual {p0, p1}, Landroid/text/style/LineBreakConfigSpan$1;->createFromParcel(Landroid/os/Parcel;)Landroid/text/style/LineBreakConfigSpan;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/text/style/LineBreakConfigSpan;
    .registers 3
    .param p1, "size"    # I

    .line 143
    new-array v0, p1, [Landroid/text/style/LineBreakConfigSpan;

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

    .line 132
    invoke-virtual {p0, p1}, Landroid/text/style/LineBreakConfigSpan$1;->newArray(I)[Landroid/text/style/LineBreakConfigSpan;

    move-result-object p1

    return-object p1
.end method
