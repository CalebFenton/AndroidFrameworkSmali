.class public final Lcom/android/i18n/phonenumbers/metadata/init/ClassPathResourceMetadataLoader;
.super Ljava/lang/Object;
.source "ClassPathResourceMetadataLoader.java"

# interfaces
.implements Lcom/android/i18n/phonenumbers/MetadataLoader;


# static fields
.field private static final blacklist logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 32
    nop

    .line 33
    const-class v0, Lcom/android/i18n/phonenumbers/metadata/init/ClassPathResourceMetadataLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/i18n/phonenumbers/metadata/init/ClassPathResourceMetadataLoader;->logger:Ljava/util/logging/Logger;

    .line 32
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist loadMetadata(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 7
    .param p1, "metadataFileName"    # Ljava/lang/String;

    .line 37
    nop

    .line 38
    const-class v0, Lcom/android/i18n/phonenumbers/metadata/init/ClassPathResourceMetadataLoader;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 39
    .local v0, "inputStream":Ljava/io/InputStream;
    if-nez v0, :cond_1a

    .line 40
    sget-object v1, Lcom/android/i18n/phonenumbers/metadata/init/ClassPathResourceMetadataLoader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "File %s not found"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 42
    :cond_1a
    return-object v0
.end method
