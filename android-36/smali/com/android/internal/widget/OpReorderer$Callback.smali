.class interface abstract Lcom/android/internal/widget/OpReorderer$Callback;
.super Ljava/lang/Object;
.source "OpReorderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/OpReorderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# virtual methods
.method public abstract blacklist obtainUpdateOp(IIILjava/lang/Object;)Lcom/android/internal/widget/AdapterHelper$UpdateOp;
.end method

.method public abstract blacklist recycleUpdateOp(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
.end method
