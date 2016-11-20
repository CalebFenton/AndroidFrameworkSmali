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
.field final acc:Ljava/security/AccessControlContext;

.field next:Ljava/io/ObjectInputStream$ValidationList$Callback;

.field final obj:Ljava/io/ObjectInputValidation;

.field final priority:I


# direct methods
.method constructor <init>(Ljava/io/ObjectInputValidation;ILjava/io/ObjectInputStream$ValidationList$Callback;Ljava/security/AccessControlContext;)V
    .locals 0
    .param p1, "obj"    # Ljava/io/ObjectInputValidation;
    .param p2, "priority"    # I
    .param p3, "next"    # Ljava/io/ObjectInputStream$ValidationList$Callback;
    .param p4, "acc"    # Ljava/security/AccessControlContext;

    #@0
    .prologue
    .line 2200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2203
    iput-object p1, p0, Ljava/io/ObjectInputStream$ValidationList$Callback;->obj:Ljava/io/ObjectInputValidation;

    #@5
    .line 2204
    iput p2, p0, Ljava/io/ObjectInputStream$ValidationList$Callback;->priority:I

    #@7
    .line 2205
    iput-object p3, p0, Ljava/io/ObjectInputStream$ValidationList$Callback;->next:Ljava/io/ObjectInputStream$ValidationList$Callback;

    #@9
    .line 2206
    iput-object p4, p0, Ljava/io/ObjectInputStream$ValidationList$Callback;->acc:Ljava/security/AccessControlContext;

    #@b
    .line 2201
    return-void
.end method
