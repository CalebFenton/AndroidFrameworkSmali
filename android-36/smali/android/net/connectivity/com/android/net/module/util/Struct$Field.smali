.class public interface abstract annotation Landroid/net/connectivity/com/android/net/module/util/Struct$Field;
.super Ljava/lang/Object;
.source "Struct.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Landroid/net/connectivity/com/android/net/module/util/Struct$Field;
        arraysize = 0x0
        padding = 0x0
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/android/net/module/util/Struct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Field"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract blacklist arraysize()I
.end method

.method public abstract blacklist order()I
.end method

.method public abstract blacklist padding()I
.end method

.method public abstract blacklist type()Landroid/net/connectivity/com/android/net/module/util/Struct$Type;
.end method
