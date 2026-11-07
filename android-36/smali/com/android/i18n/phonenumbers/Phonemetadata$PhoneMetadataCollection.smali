.class public Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
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
    name = "PhoneMetadataCollection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection$Builder;
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x1L


# instance fields
.field private greylist-max-o metadata_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-r <init>()V
    .registers 2

    .line 1170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->metadata_:Ljava/util/List;

    .line 1170
    return-void
.end method

.method public static blacklist newBuilder()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection$Builder;
    .registers 1

    .line 1184
    new-instance v0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection$Builder;

    invoke-direct {v0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public blacklist addMetadata(Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .registers 3
    .param p1, "value"    # Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1197
    if-eqz p1, :cond_8

    .line 1200
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->metadata_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1201
    return-object p0

    .line 1198
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist clear()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .registers 2

    .line 1222
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->metadata_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1223
    return-object p0
.end method

.method public blacklist getMetadataCount()I
    .registers 2

    .line 1194
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->metadata_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public greylist-max-r getMetadataList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation

    .line 1192
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->metadata_:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api readExternal(Ljava/io/ObjectInput;)V
    .registers 6
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1213
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 1214
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_17

    .line 1215
    new-instance v2, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-direct {v2}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;-><init>()V

    .line 1216
    .local v2, "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v2, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->readExternal(Ljava/io/ObjectInput;)V

    .line 1217
    iget-object v3, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->metadata_:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1214
    .end local v2    # "metadata":Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1219
    .end local v1    # "i":I
    :cond_17
    return-void
.end method

.method public whitelist test-api writeExternal(Ljava/io/ObjectOutput;)V
    .registers 5
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1205
    invoke-virtual {p0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->getMetadataCount()I

    move-result v0

    .line 1206
    .local v0, "size":I
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 1207
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_18

    .line 1208
    iget-object v2, p0, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;->metadata_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v2, p1}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 1207
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1210
    .end local v1    # "i":I
    :cond_18
    return-void
.end method
