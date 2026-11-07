.class public final Lcom/android/internal/telephony/phonenumbers/metadata/source/SingleFileModeFileNameProvider;
.super Ljava/lang/Object;
.source "SingleFileModeFileNameProvider.java"

# interfaces
.implements Lcom/android/internal/telephony/phonenumbers/metadata/source/PhoneMetadataFileNameProvider;


# instance fields
.field private final blacklist phoneMetadataFileName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/SingleFileModeFileNameProvider;->phoneMetadataFileName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist getFor(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 33
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/metadata/source/SingleFileModeFileNameProvider;->phoneMetadataFileName:Ljava/lang/String;

    return-object p0
.end method
