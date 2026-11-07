.class public final Landroid/app/Vr2dDisplayProperties;
.super Ljava/lang/Object;
.source "Vr2dDisplayProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Vr2dDisplayProperties$Builder;,
        Landroid/app/Vr2dDisplayProperties$Vr2dDisplayFlag;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/Vr2dDisplayProperties;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FLAG_VIRTUAL_DISPLAY_ENABLED:I = 0x1


# instance fields
.field private final greylist-max-o mAddedFlags:I

.field private final greylist-max-o mDpi:I

.field private final greylist-max-o mHeight:I

.field private final greylist-max-o mRemovedFlags:I

.field private final greylist-max-o mWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 118
    new-instance v0, Landroid/app/Vr2dDisplayProperties$1;

    invoke-direct {v0}, Landroid/app/Vr2dDisplayProperties$1;-><init>()V

    sput-object v0, Landroid/app/Vr2dDisplayProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(III)V
    .registers 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "dpi"    # I

    .line 59
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .end local p1    # "width":I
    .end local p2    # "height":I
    .end local p3    # "dpi":I
    .local v1, "width":I
    .local v2, "height":I
    .local v3, "dpi":I
    invoke-direct/range {v0 .. v5}, Landroid/app/Vr2dDisplayProperties;-><init>(IIIII)V

    .line 60
    return-void
.end method

.method private constructor greylist-max-o <init>(IIIII)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "dpi"    # I
    .param p4, "flags"    # I
    .param p5, "removedFlags"    # I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput p1, p0, Landroid/app/Vr2dDisplayProperties;->mWidth:I

    .line 64
    iput p2, p0, Landroid/app/Vr2dDisplayProperties;->mHeight:I

    .line 65
    iput p3, p0, Landroid/app/Vr2dDisplayProperties;->mDpi:I

    .line 66
    iput p4, p0, Landroid/app/Vr2dDisplayProperties;->mAddedFlags:I

    .line 67
    iput p5, p0, Landroid/app/Vr2dDisplayProperties;->mRemovedFlags:I

    .line 68
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIILandroid/app/Vr2dDisplayProperties-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/app/Vr2dDisplayProperties;-><init>(IIIII)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Vr2dDisplayProperties;->mWidth:I

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Vr2dDisplayProperties;->mHeight:I

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Vr2dDisplayProperties;->mDpi:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Vr2dDisplayProperties;->mAddedFlags:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Vr2dDisplayProperties;->mRemovedFlags:I

    .line 137
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/Vr2dDisplayProperties-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/Vr2dDisplayProperties;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static greylist-max-o toReadableFlags(I)Ljava/lang/String;
    .registers 4
    .param p0, "flags"    # I

    .line 184
    const-string/jumbo v0, "{"

    .line 185
    .local v0, "retval":Ljava/lang/String;
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    :cond_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 92
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 93
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_4e

    .line 95
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/Vr2dDisplayProperties;

    .line 97
    .local v2, "that":Landroid/app/Vr2dDisplayProperties;
    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->getAddedFlags()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/Vr2dDisplayProperties;->getAddedFlags()I

    move-result v4

    if-eq v3, v4, :cond_20

    return v1

    .line 98
    :cond_20
    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->getRemovedFlags()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/Vr2dDisplayProperties;->getRemovedFlags()I

    move-result v4

    if-eq v3, v4, :cond_2b

    return v1

    .line 99
    :cond_2b
    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/Vr2dDisplayProperties;->getWidth()I

    move-result v4

    if-eq v3, v4, :cond_36

    return v1

    .line 100
    :cond_36
    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/Vr2dDisplayProperties;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_41

    return v1

    .line 101
    :cond_41
    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->getDpi()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/Vr2dDisplayProperties;->getDpi()I

    move-result v4

    if-ne v3, v4, :cond_4c

    goto :goto_4d

    :cond_4c
    move v0, v1

    :goto_4d
    return v0

    .line 93
    .end local v2    # "that":Landroid/app/Vr2dDisplayProperties;
    :cond_4e
    :goto_4e
    return v1
.end method

.method public whitelist getAddedFlags()I
    .registers 2

    .line 172
    iget v0, p0, Landroid/app/Vr2dDisplayProperties;->mAddedFlags:I

    return v0
.end method

.method public whitelist getDpi()I
    .registers 2

    .line 164
    iget v0, p0, Landroid/app/Vr2dDisplayProperties;->mDpi:I

    return v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 157
    iget v0, p0, Landroid/app/Vr2dDisplayProperties;->mHeight:I

    return v0
.end method

.method public whitelist getRemovedFlags()I
    .registers 2

    .line 180
    iget v0, p0, Landroid/app/Vr2dDisplayProperties;->mRemovedFlags:I

    return v0
.end method

.method public whitelist getWidth()I
    .registers 2

    .line 150
    iget v0, p0, Landroid/app/Vr2dDisplayProperties;->mWidth:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 72
    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->getWidth()I

    move-result v0

    .line 73
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 74
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->getDpi()I

    move-result v2

    add-int/2addr v0, v2

    .line 75
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vr2dDisplayProperties{mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/Vr2dDisplayProperties;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/Vr2dDisplayProperties;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/Vr2dDisplayProperties;->mDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/Vr2dDisplayProperties;->mAddedFlags:I

    .line 85
    invoke-static {v1}, Landroid/app/Vr2dDisplayProperties;->toReadableFlags(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", removed_flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/app/Vr2dDisplayProperties;->mRemovedFlags:I

    .line 86
    invoke-static {v1}, Landroid/app/Vr2dDisplayProperties;->toReadableFlags(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 111
    iget v0, p0, Landroid/app/Vr2dDisplayProperties;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget v0, p0, Landroid/app/Vr2dDisplayProperties;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget v0, p0, Landroid/app/Vr2dDisplayProperties;->mDpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget v0, p0, Landroid/app/Vr2dDisplayProperties;->mAddedFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget v0, p0, Landroid/app/Vr2dDisplayProperties;->mRemovedFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    return-void
.end method
