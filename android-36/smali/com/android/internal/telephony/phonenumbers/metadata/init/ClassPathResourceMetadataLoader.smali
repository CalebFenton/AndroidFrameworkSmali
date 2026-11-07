.class public final Lcom/android/internal/telephony/phonenumbers/metadata/init/ClassPathResourceMetadataLoader;
.super Ljava/lang/Object;
.source "ClassPathResourceMetadataLoader.java"

# interfaces
.implements Lcom/android/internal/telephony/phonenumbers/MetadataLoader;


# static fields
.field private static final blacklist logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 30
    const-class v0, Lcom/android/internal/telephony/phonenumbers/metadata/init/ClassPathResourceMetadataLoader;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/phonenumbers/metadata/init/ClassPathResourceMetadataLoader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist loadMetadata(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 5

    .line 35
    const-class p0, Lcom/android/internal/telephony/phonenumbers/metadata/init/ClassPathResourceMetadataLoader;

    .line 36
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    if-nez p0, :cond_19

    .line 38
    sget-object v0, Lcom/android/internal/telephony/phonenumbers/metadata/init/ClassPathResourceMetadataLoader;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "File %s not found"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_19
    return-object p0
.end method
