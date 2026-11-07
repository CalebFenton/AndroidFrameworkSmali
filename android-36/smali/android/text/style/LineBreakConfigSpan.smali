.class public final Landroid/text/style/LineBreakConfigSpan;
.super Ljava/lang/Object;
.source "LineBreakConfigSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/text/style/LineBreakConfigSpan;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sNoBreakConfig:Landroid/graphics/text/LineBreakConfig;

.field private static final blacklist sNoHyphenationConfig:Landroid/graphics/text/LineBreakConfig;


# instance fields
.field private final blacklist mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 96
    new-instance v0, Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-direct {v0}, Landroid/graphics/text/LineBreakConfig$Builder;-><init>()V

    .line 97
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/text/LineBreakConfig$Builder;->setHyphenation(I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Landroid/graphics/text/LineBreakConfig$Builder;->build()Landroid/graphics/text/LineBreakConfig;

    move-result-object v0

    sput-object v0, Landroid/text/style/LineBreakConfigSpan;->sNoHyphenationConfig:Landroid/graphics/text/LineBreakConfig;

    .line 100
    new-instance v0, Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-direct {v0}, Landroid/graphics/text/LineBreakConfig$Builder;-><init>()V

    .line 101
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/graphics/text/LineBreakConfig$Builder;->setLineBreakStyle(I)Landroid/graphics/text/LineBreakConfig$Builder;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/graphics/text/LineBreakConfig$Builder;->build()Landroid/graphics/text/LineBreakConfig;

    move-result-object v0

    sput-object v0, Landroid/text/style/LineBreakConfigSpan;->sNoBreakConfig:Landroid/graphics/text/LineBreakConfig;

    .line 132
    new-instance v0, Landroid/text/style/LineBreakConfigSpan$1;

    invoke-direct {v0}, Landroid/text/style/LineBreakConfigSpan$1;-><init>()V

    sput-object v0, Landroid/text/style/LineBreakConfigSpan;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/text/LineBreakConfig;)V
    .registers 2
    .param p1, "lineBreakConfig"    # Landroid/graphics/text/LineBreakConfig;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/text/style/LineBreakConfigSpan;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    .line 45
    return-void
.end method

.method public static whitelist createNoBreakSpan()Landroid/text/style/LineBreakConfigSpan;
    .registers 2

    .line 67
    new-instance v0, Landroid/text/style/LineBreakConfigSpan;

    sget-object v1, Landroid/text/style/LineBreakConfigSpan;->sNoBreakConfig:Landroid/graphics/text/LineBreakConfig;

    invoke-direct {v0, v1}, Landroid/text/style/LineBreakConfigSpan;-><init>(Landroid/graphics/text/LineBreakConfig;)V

    return-object v0
.end method

.method public static whitelist createNoHyphenationSpan()Landroid/text/style/LineBreakConfigSpan;
    .registers 2

    .line 75
    new-instance v0, Landroid/text/style/LineBreakConfigSpan;

    sget-object v1, Landroid/text/style/LineBreakConfigSpan;->sNoHyphenationConfig:Landroid/graphics/text/LineBreakConfig;

    invoke-direct {v0, v1}, Landroid/text/style/LineBreakConfigSpan;-><init>(Landroid/graphics/text/LineBreakConfig;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 80
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 81
    :cond_4
    instance-of v0, p1, Landroid/text/style/LineBreakConfigSpan;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return v0

    .line 82
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/text/style/LineBreakConfigSpan;

    .line 83
    .local v0, "that":Landroid/text/style/LineBreakConfigSpan;
    iget-object v1, p0, Landroid/text/style/LineBreakConfigSpan;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    iget-object v2, v0, Landroid/text/style/LineBreakConfigSpan;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist getLineBreakConfig()Landroid/graphics/text/LineBreakConfig;
    .registers 2

    .line 53
    iget-object v0, p0, Landroid/text/style/LineBreakConfigSpan;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    return-object v0
.end method

.method public whitelist getSpanTypeId()I
    .registers 2

    .line 116
    invoke-virtual {p0}, Landroid/text/style/LineBreakConfigSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public blacklist getSpanTypeIdInternal()I
    .registers 2

    .line 122
    const/16 v0, 0x1e

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 88
    iget-object v0, p0, Landroid/text/style/LineBreakConfigSpan;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LineBreakConfigSpan{mLineBreakConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/text/style/LineBreakConfigSpan;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 111
    invoke-virtual {p0, p1, p2}, Landroid/text/style/LineBreakConfigSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    .line 112
    return-void
.end method

.method public blacklist writeToParcelInternal(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 128
    iget-object v0, p0, Landroid/text/style/LineBreakConfigSpan;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 129
    return-void
.end method
