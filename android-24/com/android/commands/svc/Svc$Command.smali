.class public abstract Lcom/android/commands/svc/Svc$Command;
.super Ljava/lang/Object;
.source "Svc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/svc/Svc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Command"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 25
    iput-object p1, p0, Lcom/android/commands/svc/Svc$Command;->mName:Ljava/lang/String;

    #@5
    .line 24
    return-void
.end method


# virtual methods
.method public abstract longHelp()Ljava/lang/String;
.end method

.method public name()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/commands/svc/Svc$Command;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public abstract run([Ljava/lang/String;)V
.end method

.method public abstract shortHelp()Ljava/lang/String;
.end method
