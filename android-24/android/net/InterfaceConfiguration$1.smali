.class final Landroid/net/InterfaceConfiguration$1;
.super Ljava/lang/Object;
.source "InterfaceConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/InterfaceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/InterfaceConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 140
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/InterfaceConfiguration;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 142
    new-instance v1, Landroid/net/InterfaceConfiguration;

    #@2
    invoke-direct {v1}, Landroid/net/InterfaceConfiguration;-><init>()V

    #@5
    .line 143
    .local v1, "info":Landroid/net/InterfaceConfiguration;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    invoke-static {v1, v3}, Landroid/net/InterfaceConfiguration;->-set1(Landroid/net/InterfaceConfiguration;Ljava/lang/String;)Ljava/lang/String;

    #@c
    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    #@f
    move-result v3

    #@10
    const/4 v4, 0x1

    #@11
    if-ne v3, v4, :cond_0

    #@13
    .line 145
    const/4 v3, 0x0

    #@14
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Landroid/net/LinkAddress;

    #@1a
    invoke-static {v1, v3}, Landroid/net/InterfaceConfiguration;->-set0(Landroid/net/InterfaceConfiguration;Landroid/net/LinkAddress;)Landroid/net/LinkAddress;

    #@1d
    .line 147
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@20
    move-result v2

    #@21
    .line 148
    .local v2, "size":I
    const/4 v0, 0x0

    #@22
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@24
    .line 149
    invoke-static {v1}, Landroid/net/InterfaceConfiguration;->-get0(Landroid/net/InterfaceConfiguration;)Ljava/util/HashSet;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2b
    move-result-object v4

    #@2c
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@2f
    .line 148
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 151
    :cond_1
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 141
    invoke-virtual {p0, p1}, Landroid/net/InterfaceConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/InterfaceConfiguration;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/net/InterfaceConfiguration;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 155
    new-array v0, p1, [Landroid/net/InterfaceConfiguration;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 154
    invoke-virtual {p0, p1}, Landroid/net/InterfaceConfiguration$1;->newArray(I)[Landroid/net/InterfaceConfiguration;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
