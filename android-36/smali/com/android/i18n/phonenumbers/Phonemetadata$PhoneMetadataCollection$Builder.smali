.class public final Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection$Builder;
.super Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
.source "Phonemetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 1178
    invoke-direct {p0}, Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/i18n/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .registers 1

    .line 1180
    return-object p0
.end method
