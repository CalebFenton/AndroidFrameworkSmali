.class interface abstract Landroid/app/ActivityThreadInternal;
.super Ljava/lang/Object;
.source "ActivityThreadInternal.java"


# virtual methods
.method public abstract blacklist collectComponentCallbacks(Z)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentCallbacks2;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getApplication()Landroid/app/Application;
.end method

.method public abstract blacklist getSystemContext()Landroid/app/ContextImpl;
.end method

.method public abstract blacklist getSystemUiContextNoCreate()Landroid/content/Context;
.end method

.method public abstract blacklist isInDensityCompatMode()Z
.end method
