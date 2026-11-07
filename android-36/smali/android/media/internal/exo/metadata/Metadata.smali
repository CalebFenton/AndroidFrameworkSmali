.class public final Landroid/media/internal/exo/metadata/Metadata;
.super Ljava/lang/Object;
.source "Metadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/exo/metadata/Metadata$Entry;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/internal/exo/metadata/Metadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist entries:[Landroid/media/internal/exo/metadata/Metadata$Entry;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 162
    new-instance v0, Landroid/media/internal/exo/metadata/Metadata$1;

    invoke-direct {v0}, Landroid/media/internal/exo/metadata/Metadata$1;-><init>()V

    sput-object v0, Landroid/media/internal/exo/metadata/Metadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [Landroid/media/internal/exo/metadata/Metadata$Entry;

    iput-object v0, p0, Landroid/media/internal/exo/metadata/Metadata;->entries:[Landroid/media/internal/exo/metadata/Metadata$Entry;

    const/4 v0, 0x0

    .line 77
    :goto_c
    iget-object v1, p0, Landroid/media/internal/exo/metadata/Metadata;->entries:[Landroid/media/internal/exo/metadata/Metadata$Entry;

    array-length v2, v1

    if-ge v0, v2, :cond_22

    .line 78
    const-class v2, Landroid/media/internal/exo/metadata/Metadata$Entry;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/media/internal/exo/metadata/Metadata$Entry;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_22
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/media/internal/exo/metadata/Metadata$Entry;",
            ">;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 72
    new-array v0, v0, [Landroid/media/internal/exo/metadata/Metadata$Entry;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/media/internal/exo/metadata/Metadata$Entry;

    iput-object p1, p0, Landroid/media/internal/exo/metadata/Metadata;->entries:[Landroid/media/internal/exo/metadata/Metadata$Entry;

    return-void
.end method

.method public varargs constructor blacklist <init>([Landroid/media/internal/exo/metadata/Metadata$Entry;)V
    .registers 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Landroid/media/internal/exo/metadata/Metadata;->entries:[Landroid/media/internal/exo/metadata/Metadata$Entry;

    return-void
.end method


# virtual methods
.method public varargs blacklist copyWithAppendedEntries([Landroid/media/internal/exo/metadata/Metadata$Entry;)Landroid/media/internal/exo/metadata/Metadata;
    .registers 3

    .line 119
    array-length v0, p1

    if-nez v0, :cond_4

    return-object p0

    .line 122
    :cond_4
    new-instance v0, Landroid/media/internal/exo/metadata/Metadata;

    iget-object p0, p0, Landroid/media/internal/exo/metadata/Metadata;->entries:[Landroid/media/internal/exo/metadata/Metadata$Entry;

    invoke-static {p0, p1}, Landroid/media/internal/exo/util/Util;->nullSafeArrayConcatenation([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/media/internal/exo/metadata/Metadata$Entry;

    invoke-direct {v0, p0}, Landroid/media/internal/exo/metadata/Metadata;-><init>([Landroid/media/internal/exo/metadata/Metadata$Entry;)V

    return-object v0
.end method

.method public blacklist copyWithAppendedEntriesFrom(Landroid/media/internal/exo/metadata/Metadata;)Landroid/media/internal/exo/metadata/Metadata;
    .registers 2

    if-nez p1, :cond_3

    return-object p0

    .line 109
    :cond_3
    iget-object p1, p1, Landroid/media/internal/exo/metadata/Metadata;->entries:[Landroid/media/internal/exo/metadata/Metadata$Entry;

    invoke-virtual {p0, p1}, Landroid/media/internal/exo/metadata/Metadata;->copyWithAppendedEntries([Landroid/media/internal/exo/metadata/Metadata$Entry;)Landroid/media/internal/exo/metadata/Metadata;

    move-result-object p0

    return-object p0
.end method

.method public whitelist describeContents()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    if-eqz p1, :cond_1a

    .line 130
    const-class v0, Landroid/media/internal/exo/metadata/Metadata;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_f

    goto :goto_1a

    .line 133
    :cond_f
    check-cast p1, Landroid/media/internal/exo/metadata/Metadata;

    .line 134
    iget-object p0, p0, Landroid/media/internal/exo/metadata/Metadata;->entries:[Landroid/media/internal/exo/metadata/Metadata$Entry;

    iget-object p1, p1, Landroid/media/internal/exo/metadata/Metadata;->entries:[Landroid/media/internal/exo/metadata/Metadata$Entry;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist get(I)Landroid/media/internal/exo/metadata/Metadata$Entry;
    .registers 2

    .line 94
    iget-object p0, p0, Landroid/media/internal/exo/metadata/Metadata;->entries:[Landroid/media/internal/exo/metadata/Metadata$Entry;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 139
    iget-object p0, p0, Landroid/media/internal/exo/metadata/Metadata;->entries:[Landroid/media/internal/exo/metadata/Metadata$Entry;

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist length()I
    .registers 1

    .line 84
    iget-object p0, p0, Landroid/media/internal/exo/metadata/Metadata;->entries:[Landroid/media/internal/exo/metadata/Metadata$Entry;

    array-length p0, p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "entries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/media/internal/exo/metadata/Metadata;->entries:[Landroid/media/internal/exo/metadata/Metadata$Entry;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 156
    iget-object p2, p0, Landroid/media/internal/exo/metadata/Metadata;->entries:[Landroid/media/internal/exo/metadata/Metadata$Entry;

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-object p0, p0, Landroid/media/internal/exo/metadata/Metadata;->entries:[Landroid/media/internal/exo/metadata/Metadata$Entry;

    array-length p2, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-ge v1, p2, :cond_15

    aget-object v2, p0, v1

    .line 158
    invoke-virtual {p1, v2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_15
    return-void
.end method
