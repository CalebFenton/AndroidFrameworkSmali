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
.field final greylist-max-o handler:Landroid/sax/RootElement$Handler;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "localName"    # Ljava/lang/String;

    .line 87
    const-string v0, ""

    invoke-direct {p0, v0, p1}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/sax/Element;-><init>(Landroid/sax/Element;Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    new-instance v0, Landroid/sax/RootElement$Handler;

    invoke-direct {v0, p0}, Landroid/sax/RootElement$Handler;-><init>(Landroid/sax/RootElement;)V

    iput-object v0, p0, Landroid/sax/RootElement;->handler:Landroid/sax/RootElement$Handler;

    .line 78
    return-void
.end method


# virtual methods
.method public whitelist getContentHandler()Lorg/xml/sax/ContentHandler;
    .registers 2

    .line 94
    iget-object v0, p0, Landroid/sax/RootElement;->handler:Landroid/sax/RootElement$Handler;

    return-object v0
.end method
