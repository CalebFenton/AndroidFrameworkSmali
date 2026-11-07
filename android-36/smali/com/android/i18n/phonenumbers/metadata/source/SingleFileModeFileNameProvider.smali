.class public final Lcom/android/i18n/phonenumbers/metadata/source/SingleFileModeFileNameProvider;
.super Ljava/lang/Object;
.source "SingleFileModeFileNameProvider.java"

# interfaces
.implements Lcom/android/i18n/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;


# instance fields
.field private final blacklist phoneMetadataFileName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "phoneMetadataFileName"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/i18n/phonenumbers/metadata/source/SingleFileModeFileNameProvider;->phoneMetadataFileName:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public blacklist getFor(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/android/i18n/phonenumbers/metadata/source/SingleFileModeFileNameProvider;->phoneMetadataFileName:Ljava/lang/String;

    return-object v0
.end method
