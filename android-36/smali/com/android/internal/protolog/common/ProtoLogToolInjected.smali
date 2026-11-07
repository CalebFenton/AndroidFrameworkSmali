.class public interface abstract annotation Lcom/android/internal/protolog/common/ProtoLogToolInjected;
.super Ljava/lang/Object;
.source "ProtoLogToolInjected.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract blacklist value()Lcom/android/internal/protolog/common/ProtoLogToolInjected$Value;
.end method
