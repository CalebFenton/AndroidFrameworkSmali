.class public final Landroid/view/Display$ColorTransform;
.super Ljava/lang/Object;
.source "Display.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/Display;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ColorTransform"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/Display$ColorTransform$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/Display$ColorTransform;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_ARRAY:[Landroid/view/Display$ColorTransform;


# instance fields
.field private final mColorTransform:I

.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1262
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Landroid/view/Display$ColorTransform;

    #@3
    sput-object v0, Landroid/view/Display$ColorTransform;->EMPTY_ARRAY:[Landroid/view/Display$ColorTransform;

    #@5
    .line 1327
    new-instance v0, Landroid/view/Display$ColorTransform$1;

    #@7
    invoke-direct {v0}, Landroid/view/Display$ColorTransform$1;-><init>()V

    #@a
    .line 1326
    sput-object v0, Landroid/view/Display$ColorTransform;->CREATOR:Landroid/os/Parcelable$Creator;

    #@c
    .line 1261
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "colorTransform"    # I

    #@0
    .prologue
    .line 1267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1268
    iput p1, p0, Landroid/view/Display$ColorTransform;->mId:I

    #@5
    .line 1269
    iput p2, p0, Landroid/view/Display$ColorTransform;->mColorTransform:I

    #@7
    .line 1267
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v1

    #@8
    invoke-direct {p0, v0, v1}, Landroid/view/Display$ColorTransform;-><init>(II)V

    #@b
    .line 1315
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/Display$ColorTransform;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/Display$ColorTransform;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1312
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1282
    if-ne p0, p1, :cond_0

    #@4
    .line 1283
    return v1

    #@5
    .line 1285
    :cond_0
    instance-of v3, p1, Landroid/view/Display$ColorTransform;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 1286
    return v2

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 1288
    check-cast v0, Landroid/view/Display$ColorTransform;

    #@d
    .line 1289
    .local v0, "that":Landroid/view/Display$ColorTransform;
    iget v3, p0, Landroid/view/Display$ColorTransform;->mId:I

    #@f
    iget v4, v0, Landroid/view/Display$ColorTransform;->mId:I

    #@11
    if-ne v3, v4, :cond_3

    #@13
    .line 1290
    iget v3, p0, Landroid/view/Display$ColorTransform;->mColorTransform:I

    #@15
    iget v4, v0, Landroid/view/Display$ColorTransform;->mColorTransform:I

    #@17
    if-ne v3, v4, :cond_2

    #@19
    .line 1289
    :goto_0
    return v1

    #@1a
    :cond_2
    move v1, v2

    #@1b
    .line 1290
    goto :goto_0

    #@1c
    :cond_3
    move v1, v2

    #@1d
    .line 1289
    goto :goto_0
.end method

.method public getColorTransform()I
    .locals 1

    #@0
    .prologue
    .line 1277
    iget v0, p0, Landroid/view/Display$ColorTransform;->mColorTransform:I

    #@2
    return v0
.end method

.method public getId()I
    .locals 1

    #@0
    .prologue
    .line 1273
    iget v0, p0, Landroid/view/Display$ColorTransform;->mId:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 1296
    iget v1, p0, Landroid/view/Display$ColorTransform;->mId:I

    #@2
    add-int/lit8 v0, v1, 0x11

    #@4
    .line 1297
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x11

    #@6
    iget v2, p0, Landroid/view/Display$ColorTransform;->mColorTransform:I

    #@8
    add-int v0, v1, v2

    #@a
    .line 1298
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 1303
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "{"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 1304
    const-string/jumbo v1, "id="

    #@b
    .line 1303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    .line 1304
    iget v1, p0, Landroid/view/Display$ColorTransform;->mId:I

    #@11
    .line 1303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    .line 1305
    const-string/jumbo v1, ", colorTransform="

    #@18
    .line 1303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    .line 1305
    iget v1, p0, Landroid/view/Display$ColorTransform;->mColorTransform:I

    #@1e
    .line 1303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    .line 1306
    const-string/jumbo v1, "}"

    #@25
    .line 1303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    #@0
    .prologue
    .line 1321
    iget v0, p0, Landroid/view/Display$ColorTransform;->mId:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 1322
    iget v0, p0, Landroid/view/Display$ColorTransform;->mColorTransform:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 1320
    return-void
.end method
