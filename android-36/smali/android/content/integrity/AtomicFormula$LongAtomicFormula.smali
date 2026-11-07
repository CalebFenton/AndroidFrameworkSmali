.class public final Landroid/content/integrity/AtomicFormula$LongAtomicFormula;
.super Landroid/content/integrity/AtomicFormula;
.source "AtomicFormula.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/integrity/AtomicFormula;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LongAtomicFormula"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/integrity/AtomicFormula$LongAtomicFormula;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mOperator:Ljava/lang/Integer;

.field private final blacklist mValue:Ljava/lang/Long;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 192
    new-instance v0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula$1;

    invoke-direct {v0}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula$1;-><init>()V

    sput-object v0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 5
    .param p1, "key"    # I

    .line 157
    invoke-direct {p0, p1}, Landroid/content/integrity/AtomicFormula;-><init>(I)V

    .line 158
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 160
    :goto_9
    invoke-static {p1}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->keyToString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 158
    const-string v2, "Key %s cannot be used with LongAtomicFormula"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    .line 162
    iput-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    .line 163
    return-void
.end method

.method public constructor blacklist <init>(IIJ)V
    .registers 8
    .param p1, "key"    # I
    .param p2, "operator"    # I
    .param p3, "value"    # J

    .line 175
    invoke-direct {p0, p1}, Landroid/content/integrity/AtomicFormula;-><init>(I)V

    .line 176
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 178
    :goto_9
    invoke-static {p1}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->keyToString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 176
    const-string v2, "Key %s cannot be used with LongAtomicFormula"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 179
    nop

    .line 180
    invoke-static {p2}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->isValidOperator(I)Z

    move-result v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 179
    const-string v2, "Unknown operator: %d"

    invoke-static {v0, v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 181
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    .line 182
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    .line 183
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/content/integrity/AtomicFormula;-><init>(I)V

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    .line 189
    return-void
.end method

.method private static blacklist getLongMetadataValue(Landroid/content/integrity/AppInstallMetadata;I)J
    .registers 5
    .param p0, "appInstallMetadata"    # Landroid/content/integrity/AppInstallMetadata;
    .param p1, "key"    # I

    .line 301
    packed-switch p1, :pswitch_data_22

    .line 305
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected key in IntAtomicFormula"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :pswitch_1c
    invoke-virtual {p0}, Landroid/content/integrity/AppInstallMetadata;->getVersionCode()J

    move-result-wide v0

    return-wide v0

    nop

    :pswitch_data_22
    .packed-switch 0x4
        :pswitch_1c
    .end packed-switch
.end method

.method private static blacklist isValidOperator(I)Z
    .registers 3
    .param p0, "operator"    # I

    .line 297
    const/4 v0, 0x1

    if-eqz p0, :cond_a

    if-eq p0, v0, :cond_a

    const/4 v1, 0x2

    if-ne p0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_a
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 275
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 256
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 257
    return v0

    .line 259
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_36

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_36

    .line 262
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;

    .line 263
    .local v2, "that":Landroid/content/integrity/AtomicFormula$LongAtomicFormula;
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->getKey()I

    move-result v3

    invoke-virtual {v2}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->getKey()I

    move-result v4

    if-ne v3, v4, :cond_34

    iget-object v3, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    iget-object v4, v2, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    .line 264
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    iget-object v4, v2, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    .line 265
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_35

    :cond_34
    move v0, v1

    .line 263
    :goto_35
    return v0

    .line 260
    .end local v2    # "that":Landroid/content/integrity/AtomicFormula$LongAtomicFormula;
    :cond_36
    :goto_36
    return v1
.end method

.method public blacklist getOperator()Ljava/lang/Integer;
    .registers 2

    .line 293
    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    return-object v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 207
    const/4 v0, 0x2

    return v0
.end method

.method public blacklist getValue()Ljava/lang/Long;
    .registers 2

    .line 289
    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 270
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->getKey()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    iget-object v2, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isAppCertificateFormula()Z
    .registers 2

    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAppCertificateLineageFormula()Z
    .registers 2

    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isInstallerFormula()Z
    .registers 2

    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist matches(Landroid/content/integrity/AppInstallMetadata;)Z
    .registers 9
    .param p1, "appInstallMetadata"    # Landroid/content/integrity/AppInstallMetadata;

    .line 212
    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_52

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    if-nez v0, :cond_a

    goto :goto_52

    .line 216
    :cond_a
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->getKey()I

    move-result v0

    invoke-static {p1, v0}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->getLongMetadataValue(Landroid/content/integrity/AppInstallMetadata;I)J

    move-result-wide v2

    .line 217
    .local v2, "metadataValue":J
    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_54

    .line 225
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 226
    const-string v4, "Unexpected operator %d"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :pswitch_2e
    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v2, v5

    if-ltz v0, :cond_39

    move v1, v4

    :cond_39
    return v1

    .line 221
    :pswitch_3a
    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v2, v5

    if-lez v0, :cond_45

    move v1, v4

    :cond_45
    return v1

    .line 219
    :pswitch_46
    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v2, v5

    if-nez v0, :cond_51

    move v1, v4

    :cond_51
    return v1

    .line 213
    .end local v2    # "metadataValue":J
    :cond_52
    :goto_52
    return v1

    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_46
        :pswitch_3a
        :pswitch_2e
    .end packed-switch
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 247
    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    if-nez v0, :cond_9

    goto :goto_29

    .line 250
    :cond_9
    nop

    .line 251
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->getKey()I

    move-result v0

    invoke-static {v0}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->keyToString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->operatorToString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 250
    const-string v1, "(%s %s %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 248
    :cond_29
    :goto_29
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->getKey()I

    move-result v0

    invoke-static {v0}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->keyToString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 280
    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    if-eqz v0, :cond_22

    .line 283
    invoke-virtual {p0}, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->getKey()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mValue:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 285
    iget-object v0, p0, Landroid/content/integrity/AtomicFormula$LongAtomicFormula;->mOperator:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    return-void

    .line 281
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot write an empty LongAtomicFormula."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
