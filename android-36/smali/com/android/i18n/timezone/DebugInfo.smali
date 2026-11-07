.class public Lcom/android/i18n/timezone/DebugInfo;
.super Ljava/lang/Object;
.source "DebugInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/i18n/timezone/DebugInfo$DebugEntry;
    }
.end annotation


# instance fields
.field private final blacklist entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/i18n/timezone/DebugInfo$DebugEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist test-api <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/i18n/timezone/DebugInfo;->entries:Ljava/util/List;

    .line 34
    return-void
.end method


# virtual methods
.method public blacklist test-api addStringEntry(Ljava/lang/String;I)Lcom/android/i18n/timezone/DebugInfo;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 54
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/i18n/timezone/DebugInfo;->addStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/timezone/DebugInfo;

    .line 55
    return-object p0
.end method

.method public blacklist test-api addStringEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/timezone/DebugInfo;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/android/i18n/timezone/DebugInfo;->entries:Ljava/util/List;

    new-instance v1, Lcom/android/i18n/timezone/DebugInfo$DebugEntry;

    invoke-direct {v1, p1, p2}, Lcom/android/i18n/timezone/DebugInfo$DebugEntry;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    return-object p0
.end method

.method public blacklist test-api getDebugEntries()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/i18n/timezone/DebugInfo$DebugEntry;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/android/i18n/timezone/DebugInfo;->entries:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getDebugEntry(Ljava/lang/String;)Lcom/android/i18n/timezone/DebugInfo$DebugEntry;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lcom/android/i18n/timezone/DebugInfo;->getDebugEntries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/timezone/DebugInfo$DebugEntry;

    .line 67
    .local v1, "entry":Lcom/android/i18n/timezone/DebugInfo$DebugEntry;
    invoke-virtual {v1}, Lcom/android/i18n/timezone/DebugInfo$DebugEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 68
    return-object v1

    .line 70
    .end local v1    # "entry":Lcom/android/i18n/timezone/DebugInfo$DebugEntry;
    :cond_1f
    goto :goto_8

    .line 71
    :cond_20
    const/4 v0, 0x0

    return-object v0
.end method
