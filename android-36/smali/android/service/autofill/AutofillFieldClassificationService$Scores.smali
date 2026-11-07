.class public final Landroid/service/autofill/AutofillFieldClassificationService$Scores;
.super Ljava/lang/Object;
.source "AutofillFieldClassificationService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/AutofillFieldClassificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Scores"
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/AutofillFieldClassificationService$Scores;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final greylist-max-o scores:[[F


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 357
    new-instance v0, Landroid/service/autofill/AutofillFieldClassificationService$Scores$1;

    invoke-direct {v0}, Landroid/service/autofill/AutofillFieldClassificationService$Scores$1;-><init>()V

    sput-object v0, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 314
    .local v0, "size1":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 315
    .local v1, "size2":I
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v3, 0x0

    aput v0, v2, v3

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    iput-object v2, p0, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    .line 316
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1f
    if-ge v2, v0, :cond_34

    .line 317
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_22
    if-ge v3, v1, :cond_31

    .line 318
    iget-object v4, p0, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    aget-object v4, v4, v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v5

    aput v5, v4, v3

    .line 317
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 316
    .end local v3    # "j":I
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 321
    .end local v2    # "i":I
    :cond_34
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/service/autofill/AutofillFieldClassificationService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/autofill/AutofillFieldClassificationService$Scores;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor greylist-max-o <init>([[F)V
    .registers 2
    .param p1, "scores"    # [[F

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iput-object p1, p0, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    .line 325
    return-void
.end method

.method synthetic constructor blacklist <init>([[FLandroid/service/autofill/AutofillFieldClassificationService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/autofill/AutofillFieldClassificationService$Scores;-><init>([[F)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 329
    iget-object v0, p0, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    array-length v0, v0

    .line 330
    .local v0, "size1":I
    const/4 v1, 0x0

    if-lez v0, :cond_b

    iget-object v2, p0, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    aget-object v1, v2, v1

    array-length v1, v1

    .line 331
    .local v1, "size2":I
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Scores ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 333
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_28
    if-ge v3, v0, :cond_48

    .line 334
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    aget-object v5, v5, v3

    invoke-static {v5}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 333
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 336
    .end local v3    # "i":I
    :cond_48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 8
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 346
    iget-object v0, p0, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    array-length v0, v0

    .line 347
    .local v0, "size1":I
    iget-object v1, p0, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    const/4 v2, 0x0

    aget-object v1, v1, v2

    array-length v1, v1

    .line 348
    .local v1, "size2":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v0, :cond_24

    .line 351
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_13
    if-ge v3, v1, :cond_21

    .line 352
    iget-object v4, p0, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    aget-object v4, v4, v2

    aget v4, v4, v3

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 351
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 350
    .end local v3    # "j":I
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 355
    .end local v2    # "i":I
    :cond_24
    return-void
.end method
