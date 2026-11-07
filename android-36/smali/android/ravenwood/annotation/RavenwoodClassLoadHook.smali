.class public interface abstract annotation Landroid/ravenwood/annotation/RavenwoodClassLoadHook;
.super Ljava/lang/Object;
.source "RavenwoodClassLoadHook.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final blacklist LIBANDROID_LOADING_HOOK:Ljava/lang/String; = "com.android.platform.test.ravenwood.runtimehelper.ClassLoadHook.onClassLoaded"


# virtual methods
.method public abstract blacklist value()Ljava/lang/String;
.end method
