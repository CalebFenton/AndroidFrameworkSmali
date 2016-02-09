.class public Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
.super Ljava/lang/Object;
.source "SoundTrigger.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Keyphrase"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final id:I

.field public final locale:Ljava/lang/String;

.field public final recognitionModes:I

.field public final text:Ljava/lang/String;

.field public final users:[I


# direct methods
.method static synthetic -wrap0(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
    .locals 1
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-static {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 283
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase$1;

    #@2
    invoke-direct {v0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase$1;-><init>()V

    #@5
    .line 282
    sput-object v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 257
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[I)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "recognitionModes"    # I
    .param p3, "locale"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "users"    # [I

    #@0
    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 275
    iput p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->id:I

    #@5
    .line 276
    iput p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->recognitionModes:I

    #@7
    .line 277
    iput-object p3, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    #@9
    .line 278
    iput-object p4, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->text:Ljava/lang/String;

    #@b
    .line 279
    iput-object p5, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->users:[I

    #@d
    .line 274
    return-void
.end method

.method private static fromParcel(Landroid/os/Parcel;)Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
    .locals 7
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 294
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v1

    #@4
    .line 295
    .local v1, "id":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v2

    #@8
    .line 296
    .local v2, "recognitionModes":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    .line 297
    .local v3, "locale":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    .line 298
    .local v4, "text":Ljava/lang/String;
    const/4 v5, 0x0

    #@11
    .line 299
    .local v5, "users":[I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@14
    move-result v6

    #@15
    .line 300
    .local v6, "numUsers":I
    if-ltz v6, :cond_0

    #@17
    .line 301
    new-array v5, v6, [I

    #@19
    .line 302
    .local v5, "users":[I
    invoke-virtual {p0, v5}, Landroid/os/Parcel;->readIntArray([I)V

    #@1c
    .line 304
    .end local v5    # "users":[I
    :cond_0
    new-instance v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    #@1e
    invoke-direct/range {v0 .. v5}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;-><init>(IILjava/lang/String;Ljava/lang/String;[I)V

    #@21
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 323
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 340
    if-ne p0, p1, :cond_0

    #@4
    .line 341
    return v4

    #@5
    .line 342
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 343
    return v3

    #@8
    .line 344
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    if-eq v1, v2, :cond_2

    #@12
    .line 345
    return v3

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 346
    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;

    #@16
    .line 347
    .local v0, "other":Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->text:Ljava/lang/String;

    #@18
    if-nez v1, :cond_3

    #@1a
    .line 348
    iget-object v1, v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->text:Ljava/lang/String;

    #@1c
    if-eqz v1, :cond_4

    #@1e
    .line 349
    return v3

    #@1f
    .line 350
    :cond_3
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->text:Ljava/lang/String;

    #@21
    iget-object v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->text:Ljava/lang/String;

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v1

    #@27
    if-nez v1, :cond_4

    #@29
    .line 351
    return v3

    #@2a
    .line 352
    :cond_4
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->id:I

    #@2c
    iget v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->id:I

    #@2e
    if-eq v1, v2, :cond_5

    #@30
    .line 353
    return v3

    #@31
    .line 354
    :cond_5
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    #@33
    if-nez v1, :cond_6

    #@35
    .line 355
    iget-object v1, v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    #@37
    if-eqz v1, :cond_7

    #@39
    .line 356
    return v3

    #@3a
    .line 357
    :cond_6
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    #@3c
    iget-object v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    #@3e
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v1

    #@42
    if-nez v1, :cond_7

    #@44
    .line 358
    return v3

    #@45
    .line 359
    :cond_7
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->recognitionModes:I

    #@47
    iget v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->recognitionModes:I

    #@49
    if-eq v1, v2, :cond_8

    #@4b
    .line 360
    return v3

    #@4c
    .line 361
    :cond_8
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->users:[I

    #@4e
    iget-object v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->users:[I

    #@50
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    #@53
    move-result v1

    #@54
    if-nez v1, :cond_9

    #@56
    .line 362
    return v3

    #@57
    .line 363
    :cond_9
    return v4
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 328
    const/16 v0, 0x1f

    #@3
    .line 330
    .local v0, "prime":I
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->text:Ljava/lang/String;

    #@5
    if-nez v2, :cond_0

    #@7
    move v2, v3

    #@8
    :goto_0
    add-int/lit8 v1, v2, 0x1f

    #@a
    .line 331
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    #@c
    iget v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->id:I

    #@e
    add-int v1, v2, v4

    #@10
    .line 332
    mul-int/lit8 v2, v1, 0x1f

    #@12
    iget-object v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    #@14
    if-nez v4, :cond_1

    #@16
    :goto_1
    add-int v1, v2, v3

    #@18
    .line 333
    mul-int/lit8 v2, v1, 0x1f

    #@1a
    iget v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->recognitionModes:I

    #@1c
    add-int v1, v2, v3

    #@1e
    .line 334
    mul-int/lit8 v2, v1, 0x1f

    #@20
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->users:[I

    #@22
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([I)I

    #@25
    move-result v3

    #@26
    add-int v1, v2, v3

    #@28
    .line 335
    return v1

    #@29
    .line 330
    .end local v1    # "result":I
    :cond_0
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->text:Ljava/lang/String;

    #@2b
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@2e
    move-result v2

    #@2f
    goto :goto_0

    #@30
    .line 332
    .restart local v1    # "result":I
    :cond_1
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    #@32
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    #@35
    move-result v3

    #@36
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Keyphrase [id="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->id:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", recognitionModes="

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->recognitionModes:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, ", locale="

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 369
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    #@28
    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 369
    const-string/jumbo v1, ", text="

    #@2f
    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 369
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->text:Ljava/lang/String;

    #@35
    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 369
    const-string/jumbo v1, ", users="

    #@3c
    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 369
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->users:[I

    #@42
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    #@45
    move-result-object v1

    #@46
    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    .line 369
    const-string/jumbo v1, "]"

    #@4d
    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v0

    #@55
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 309
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->id:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 310
    iget v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->recognitionModes:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 311
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->locale:Ljava/lang/String;

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@f
    .line 312
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->text:Ljava/lang/String;

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 313
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->users:[I

    #@16
    if-eqz v0, :cond_0

    #@18
    .line 314
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->users:[I

    #@1a
    array-length v0, v0

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 315
    iget-object v0, p0, Landroid/hardware/soundtrigger/SoundTrigger$Keyphrase;->users:[I

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    #@23
    .line 308
    :goto_0
    return-void

    #@24
    .line 317
    :cond_0
    const/4 v0, -0x1

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@28
    goto :goto_0
.end method
