.class public interface abstract annotation Landroid/net/ConnectivityManager$NetworkCallback$FilteredCallback;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroid/net/ConnectivityManager$NetworkCallback$FilteredCallback;
        mayCall = {}
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManager$NetworkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "FilteredCallback"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract blacklist calledByCallbackId()I
.end method

.method public abstract blacklist mayCall()[I
.end method

.method public abstract blacklist methodId()I
.end method
