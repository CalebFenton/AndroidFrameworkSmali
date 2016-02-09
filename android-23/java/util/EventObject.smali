.class public Ljava/util/EventObject;
.super Ljava/lang/Object;
.source "EventObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4c8d094e186d7da8L


# instance fields
.field protected transient source:Ljava/lang/Object;
    .annotation build Ljava/lang/FindBugsSuppressWarnings;
        value = {
            "SE_TRANSIENT_FIELD_NOT_RESTORED"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    if-nez p1, :cond_0

    #@5
    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "source == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 46
    :cond_0
    iput-object p1, p0, Ljava/util/EventObject;->source:Ljava/lang/Object;

    #@10
    .line 42
    return-void
.end method


# virtual methods
.method public getSource()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Ljava/util/EventObject;->source:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/util/EventObject;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    const-string/jumbo v1, "[source="

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    iget-object v1, p0, Ljava/util/EventObject;->source:Ljava/lang/Object;

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v0

    #@1e
    const/16 v1, 0x5d

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    return-object v0
.end method
