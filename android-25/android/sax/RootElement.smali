.class public Landroid/sax/RootElement;
.super Landroid/sax/Element;
.source "RootElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sax/RootElement$Handler;
    }
.end annotation


# instance fields
.field final handler:Landroid/sax/RootElement$Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 87
    const-string/jumbo v0, ""

    #@3
    invoke-direct {p0, v0, p1}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 77
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    invoke-direct {p0, v0, p1, p2, v1}, Landroid/sax/Element;-><init>(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;I)V

    #@5
    .line 68
    new-instance v0, Landroid/sax/RootElement$Handler;

    #@7
    invoke-direct {v0, p0}, Landroid/sax/RootElement$Handler;-><init>(Landroid/sax/RootElement;)V

    #@a
    iput-object v0, p0, Landroid/sax/RootElement;->handler:Landroid/sax/RootElement$Handler;

    #@c
    .line 76
    return-void
.end method


# virtual methods
.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Landroid/sax/RootElement;->handler:Landroid/sax/RootElement$Handler;

    #@2
    return-object v0
.end method
