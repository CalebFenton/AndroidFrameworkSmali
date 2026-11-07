.class Lcom/android/i18n/timezone/ZoneInfoDb$1;
.super Lcom/android/i18n/timezone/internal/BasicLruCache;
.source "ZoneInfoDb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/timezone/ZoneInfoDb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/i18n/timezone/internal/BasicLruCache<",
        "Ljava/lang/String;",
        "Lcom/android/i18n/timezone/ZoneInfoData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/i18n/timezone/ZoneInfoDb;


# direct methods
.method constructor blacklist <init>(Lcom/android/i18n/timezone/ZoneInfoDb;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/i18n/timezone/ZoneInfoDb;
    .param p2, "maxSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/android/i18n/timezone/ZoneInfoDb$1;->this$0:Lcom/android/i18n/timezone/ZoneInfoDb;

    invoke-direct {p0, p2}, Lcom/android/i18n/timezone/internal/BasicLruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected blacklist create(Ljava/lang/String;)Lcom/android/i18n/timezone/ZoneInfoData;
    .registers 6
    .param p1, "id"    # Ljava/lang/String;

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/android/i18n/timezone/ZoneInfoDb$1;->this$0:Lcom/android/i18n/timezone/ZoneInfoDb;

    invoke-virtual {v0, p1}, Lcom/android/i18n/timezone/ZoneInfoDb;->makeZoneInfoDataUncached(Ljava/lang/String;)Lcom/android/i18n/timezone/ZoneInfoData;

    move-result-object v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 103
    :catch_7
    move-exception v0

    .line 104
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load timezone for ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected bridge synthetic blacklist create(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 98
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/i18n/timezone/ZoneInfoDb$1;->create(Ljava/lang/String;)Lcom/android/i18n/timezone/ZoneInfoData;

    move-result-object p1

    return-object p1
.end method
