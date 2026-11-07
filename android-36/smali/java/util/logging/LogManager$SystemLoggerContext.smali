.class final Ljava/util/logging/LogManager$SystemLoggerContext;
.super Ljava/util/logging/LogManager$LoggerContext;
.source "LogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/LogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SystemLoggerContext"
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/util/logging/LogManager;)V
    .registers 3
    .param p1, "this$0"    # Ljava/util/logging/LogManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 895
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/util/logging/LogManager$LoggerContext;-><init>(Ljava/util/logging/LogManager;Ljava/util/logging/LogManager-IA;)V

    return-void
.end method


# virtual methods
.method greylist-max-o demandLogger(Ljava/lang/String;Ljava/lang/String;)Ljava/util/logging/Logger;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resourceBundleName"    # Ljava/lang/String;

    .line 902
    invoke-virtual {p0, p1}, Ljava/util/logging/LogManager$SystemLoggerContext;->findLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 903
    .local v0, "result":Ljava/util/logging/Logger;
    if-nez v0, :cond_24

    .line 905
    new-instance v1, Ljava/util/logging/Logger;

    invoke-virtual {p0}, Ljava/util/logging/LogManager$SystemLoggerContext;->getOwner()Ljava/util/logging/LogManager;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v4, 0x0

    move-object v2, p1

    move-object v3, p2

    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "resourceBundleName":Ljava/lang/String;
    .local v2, "name":Ljava/lang/String;
    .local v3, "resourceBundleName":Ljava/lang/String;
    invoke-direct/range {v1 .. v6}, Ljava/util/logging/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/util/logging/LogManager;Z)V

    .line 907
    .local v1, "newLogger":Ljava/util/logging/Logger;
    :cond_13
    invoke-virtual {p0, v1}, Ljava/util/logging/LogManager$SystemLoggerContext;->addLocalLogger(Ljava/util/logging/Logger;)Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 910
    move-object p1, v1

    move-object v0, p1

    .end local v0    # "result":Ljava/util/logging/Logger;
    .local p1, "result":Ljava/util/logging/Logger;
    goto :goto_21

    .line 923
    .end local p1    # "result":Ljava/util/logging/Logger;
    .restart local v0    # "result":Ljava/util/logging/Logger;
    :cond_1c
    invoke-virtual {p0, v2}, Ljava/util/logging/LogManager$SystemLoggerContext;->findLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    move-object v0, p1

    .line 925
    :goto_21
    if-eqz v0, :cond_13

    goto :goto_26

    .line 903
    .end local v1    # "newLogger":Ljava/util/logging/Logger;
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "resourceBundleName":Ljava/lang/String;
    .local p1, "name":Ljava/lang/String;
    .restart local p2    # "resourceBundleName":Ljava/lang/String;
    :cond_24
    move-object v2, p1

    move-object v3, p2

    .line 927
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "resourceBundleName":Ljava/lang/String;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "resourceBundleName":Ljava/lang/String;
    :goto_26
    return-object v0
.end method
