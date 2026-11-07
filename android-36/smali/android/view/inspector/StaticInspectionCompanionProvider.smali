.class public Landroid/view/inspector/StaticInspectionCompanionProvider;
.super Ljava/lang/Object;
.source "StaticInspectionCompanionProvider.java"

# interfaces
.implements Landroid/view/inspector/InspectionCompanionProvider;


# static fields
.field private static final blacklist COMPANION_SUFFIX:Ljava/lang/String; = "$InspectionCompanion"


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist provide(Ljava/lang/Class;)Landroid/view/inspector/InspectionCompanion;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/view/inspector/InspectionCompanion<",
            "TT;>;"
        }
    .end annotation

    .line 35
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$InspectionCompanion"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "companionName":Ljava/lang/String;
    nop

    .line 39
    const/4 v1, 0x0

    :try_start_19
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 41
    .local v2, "companionClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/view/inspector/InspectionCompanion<TT;>;>;"
    const-class v3, Landroid/view/inspector/InspectionCompanion;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 42
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inspector/InspectionCompanion;
    :try_end_2f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_19 .. :try_end_2f} :catch_53
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_2f} :catch_4c
    .catch Ljava/lang/InstantiationException; {:try_start_19 .. :try_end_2f} :catch_31

    return-object v3

    .line 44
    :cond_30
    return-object v1

    .line 50
    .end local v2    # "companionClass":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/view/inspector/InspectionCompanion<TT;>;>;"
    :catch_31
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 52
    .local v2, "cause":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/lang/RuntimeException;

    if-nez v3, :cond_48

    .line 53
    instance-of v3, v2, Ljava/lang/Error;

    if-eqz v3, :cond_42

    move-object v3, v2

    check-cast v3, Ljava/lang/Error;

    throw v3

    .line 54
    :cond_42
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 52
    :cond_48
    move-object v3, v2

    check-cast v3, Ljava/lang/RuntimeException;

    throw v3

    .line 48
    .end local v1    # "e":Ljava/lang/InstantiationException;
    .end local v2    # "cause":Ljava/lang/Throwable;
    :catch_4c
    move-exception v1

    .line 49
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 46
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_53
    move-exception v2

    .line 47
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    return-object v1
.end method
