.class public Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
.super Ljava/lang/Object;
.source "Phonemetadata.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/phonenumbers/Phonemetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneNumberDesc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private greylist-max-o exampleNumber_:Ljava/lang/String;

.field private greylist-max-o hasExampleNumber:Z

.field private greylist-max-o hasNationalNumberPattern:Z

.field private greylist-max-o nationalNumberPattern_:Ljava/lang/String;

.field private greylist-max-o possibleLengthLocalOnly_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o possibleLength_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    .line 269
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLength_:Ljava/util/List;

    .line 287
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLengthLocalOnly_:Ljava/util/List;

    .line 306
    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public static blacklist newBuilder()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;
    .registers 1

    .line 248
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public blacklist addPossibleLength(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 4
    .param p1, "value"    # I

    .line 278
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLength_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    return-object p0
.end method

.method public blacklist addPossibleLengthLocalOnly(I)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 4
    .param p1, "value"    # I

    .line 296
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLengthLocalOnly_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    return-object p0
.end method

.method public blacklist clearExampleNumber()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber:Z

    .line 316
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    .line 317
    return-object p0
.end method

.method public blacklist clearNationalNumberPattern()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern:Z

    .line 264
    const-string v0, ""

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    .line 265
    return-object p0
.end method

.method public blacklist clearPossibleLength()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLength_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 283
    return-object p0
.end method

.method public blacklist clearPossibleLengthLocalOnly()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 2

    .line 300
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLengthLocalOnly_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 301
    return-object p0
.end method

.method public blacklist exactlySameAs(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .registers 4
    .param p1, "other"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 321
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLength_:Ljava/util/List;

    iget-object v1, p1, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLength_:Ljava/util/List;

    .line 322
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLengthLocalOnly_:Ljava/util/List;

    iget-object v1, p1, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLengthLocalOnly_:Ljava/util/List;

    .line 323
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    .line 321
    :goto_2b
    return v0
.end method

.method public blacklist getExampleNumber()Ljava/lang/String;
    .registers 2

    .line 308
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-r getNationalNumberPattern()Ljava/lang/String;
    .registers 2

    .line 256
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPossibleLength(I)I
    .registers 3
    .param p1, "index"    # I

    .line 275
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLength_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getPossibleLengthCount()I
    .registers 2

    .line 273
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLength_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getPossibleLengthList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLength_:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getPossibleLengthLocalOnly(I)I
    .registers 3
    .param p1, "index"    # I

    .line 293
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLengthLocalOnly_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public blacklist getPossibleLengthLocalOnlyCount()I
    .registers 2

    .line 291
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLengthLocalOnly_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public blacklist getPossibleLengthLocalOnlyList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLengthLocalOnly_:Ljava/util/List;

    return-object v0
.end method

.method public blacklist hasExampleNumber()Z
    .registers 2

    .line 307
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber:Z

    return v0
.end method

.method public blacklist hasNationalNumberPattern()Z
    .registers 2

    .line 254
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern:Z

    return v0
.end method

.method public whitelist test-api readExternal(Ljava/io/ObjectInput;)V
    .registers 7
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 353
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->setNationalNumberPattern(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 356
    :cond_d
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 357
    .local v0, "possibleLengthSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v0, :cond_24

    .line 358
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLength_:Ljava/util/List;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 357
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 361
    .end local v1    # "i":I
    :cond_24
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    .line 362
    .local v1, "possibleLengthLocalOnlySize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_29
    if-ge v2, v1, :cond_3b

    .line 363
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLengthLocalOnly_:Ljava/util/List;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 366
    .end local v2    # "i":I
    :cond_3b
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 367
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->setExampleNumber(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 369
    :cond_48
    return-void
.end method

.method public blacklist setExampleNumber(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber:Z

    .line 311
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    .line 312
    return-object p0
.end method

.method public blacklist setNationalNumberPattern(Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern:Z

    .line 259
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    .line 260
    return-object p0
.end method

.method public whitelist test-api writeExternal(Ljava/io/ObjectOutput;)V
    .registers 6
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 329
    iget-boolean v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern:Z

    if-eqz v0, :cond_e

    .line 330
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 333
    :cond_e
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthCount()I

    move-result v0

    .line 334
    .local v0, "possibleLengthSize":I
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 335
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, v0, :cond_2a

    .line 336
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLength_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 335
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 339
    .end local v1    # "i":I
    :cond_2a
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleLengthLocalOnlyCount()I

    move-result v1

    .line 340
    .local v1, "possibleLengthLocalOnlySize":I
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 341
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_32
    if-ge v2, v1, :cond_46

    .line 342
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleLengthLocalOnly_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 341
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 345
    .end local v2    # "i":I
    :cond_46
    iget-boolean v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber:Z

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 346
    iget-boolean v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber:Z

    if-eqz v2, :cond_54

    .line 347
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 349
    :cond_54
    return-void
.end method
