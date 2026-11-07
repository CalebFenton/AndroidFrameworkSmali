.class public Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadataCollection;
.super Ljava/lang/Object;
.source "Phonemetadata.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadataCollection$Builder;
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private blacklist metadata_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 1134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadataCollection;->metadata_:Ljava/util/List;

    return-void
.end method

.method public static blacklist newBuilder()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadataCollection$Builder;
    .registers 1

    .line 1147
    new-instance v0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadataCollection$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadataCollection$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public blacklist addMetadata(Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .registers 3

    .line 1160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1162
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadataCollection;->metadata_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public blacklist clear()Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .registers 2

    .line 1184
    iget-object v0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadataCollection;->metadata_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public blacklist getMetadataCount()I
    .registers 1

    .line 1156
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadataCollection;->metadata_:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public blacklist getMetadataList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation

    .line 1154
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadataCollection;->metadata_:Ljava/util/List;

    return-object p0
.end method

.method public whitelist test-api readExternal(Ljava/io/ObjectInput;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1175
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_17

    .line 1177
    new-instance v2, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-direct {v2}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;-><init>()V

    .line 1178
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->readExternal(Ljava/io/ObjectInput;)V

    .line 1179
    iget-object v3, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadataCollection;->metadata_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_17
    return-void
.end method

.method public whitelist test-api writeExternal(Ljava/io/ObjectOutput;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1167
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadataCollection;->getMetadataCount()I

    move-result v0

    .line 1168
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_18

    .line 1170
    iget-object v2, p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadataCollection;->metadata_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->writeExternal(Ljava/io/ObjectOutput;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_18
    return-void
.end method
