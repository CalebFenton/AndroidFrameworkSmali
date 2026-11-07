.class Ljava/io/ObjectInputStream$ValidationList$Callback;
.super Ljava/lang/Object;
.source "ObjectInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectInputStream$ValidationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Callback"
.end annotation


# instance fields
.field final greylist-max-o acc:Ljava/security/AccessControlContext;

.field greylist-max-o next:Ljava/io/ObjectInputStream$ValidationList$Callback;

.field final greylist-max-o obj:Ljava/io/ObjectInputValidation;

.field final greylist-max-o priority:I


# direct methods
.method constructor greylist-max-o <init>(Ljava/io/ObjectInputValidation;ILjava/io/ObjectInputStream$ValidationList$Callback;Ljava/security/AccessControlContext;)V
    .registers 5
    .param p1, "obj"    # Ljava/io/ObjectInputValidation;
    .param p2, "priority"    # I
    .param p3, "next"    # Ljava/io/ObjectInputStream$ValidationList$Callback;
    .param p4, "acc"    # Ljava/security/AccessControlContext;

    .line 2549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2550
    iput-object p1, p0, Ljava/io/ObjectInputStream$ValidationList$Callback;->obj:Ljava/io/ObjectInputValidation;

    .line 2551
    iput p2, p0, Ljava/io/ObjectInputStream$ValidationList$Callback;->priority:I

    .line 2552
    iput-object p3, p0, Ljava/io/ObjectInputStream$ValidationList$Callback;->next:Ljava/io/ObjectInputStream$ValidationList$Callback;

    .line 2553
    iput-object p4, p0, Ljava/io/ObjectInputStream$ValidationList$Callback;->acc:Ljava/security/AccessControlContext;

    .line 2554
    return-void
.end method
