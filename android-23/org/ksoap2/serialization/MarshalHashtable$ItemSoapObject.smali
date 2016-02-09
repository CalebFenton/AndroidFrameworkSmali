.class Lorg/ksoap2/serialization/MarshalHashtable$ItemSoapObject;
.super Lorg/ksoap2/serialization/SoapObject;
.source "MarshalHashtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/ksoap2/serialization/MarshalHashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemSoapObject"
.end annotation


# instance fields
.field h:Ljava/util/Hashtable;

.field resolvedIndex:I

.field final synthetic this$0:Lorg/ksoap2/serialization/MarshalHashtable;


# direct methods
.method constructor <init>(Lorg/ksoap2/serialization/MarshalHashtable;Ljava/util/Hashtable;)V
    .locals 2
    .param p1, "this$0"    # Lorg/ksoap2/serialization/MarshalHashtable;
    .param p2, "h"    # Ljava/util/Hashtable;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 93
    iput-object p1, p0, Lorg/ksoap2/serialization/MarshalHashtable$ItemSoapObject;->this$0:Lorg/ksoap2/serialization/MarshalHashtable;

    #@3
    .line 94
    invoke-direct {p0, v1, v1}, Lorg/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 91
    const/4 v0, -0x1

    #@7
    iput v0, p0, Lorg/ksoap2/serialization/MarshalHashtable$ItemSoapObject;->resolvedIndex:I

    #@9
    .line 95
    iput-object p2, p0, Lorg/ksoap2/serialization/MarshalHashtable$ItemSoapObject;->h:Ljava/util/Hashtable;

    #@b
    .line 96
    const-string/jumbo v0, "key"

    #@e
    invoke-virtual {p0, v0, v1}, Lorg/ksoap2/serialization/MarshalHashtable$ItemSoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    #@11
    .line 97
    const-string/jumbo v0, "value"

    #@14
    invoke-virtual {p0, v0, v1}, Lorg/ksoap2/serialization/MarshalHashtable$ItemSoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lorg/ksoap2/serialization/SoapObject;

    #@17
    .line 93
    return-void
.end method


# virtual methods
.method public setProperty(ILjava/lang/Object;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 102
    iget v1, p0, Lorg/ksoap2/serialization/MarshalHashtable$ItemSoapObject;->resolvedIndex:I

    #@3
    const/4 v2, -0x1

    #@4
    if-ne v1, v2, :cond_0

    #@6
    .line 103
    invoke-super {p0, p1, p2}, Lorg/ksoap2/serialization/SoapObject;->setProperty(ILjava/lang/Object;)V

    #@9
    .line 104
    iput p1, p0, Lorg/ksoap2/serialization/MarshalHashtable$ItemSoapObject;->resolvedIndex:I

    #@b
    .line 101
    :goto_0
    return-void

    #@c
    .line 107
    :cond_0
    iget v1, p0, Lorg/ksoap2/serialization/MarshalHashtable$ItemSoapObject;->resolvedIndex:I

    #@e
    if-nez v1, :cond_1

    #@10
    invoke-virtual {p0, v3}, Lorg/ksoap2/serialization/MarshalHashtable$ItemSoapObject;->getProperty(I)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    .line 108
    .local v0, "resolved":Ljava/lang/Object;
    :goto_1
    if-nez p1, :cond_2

    #@16
    .line 109
    iget-object v1, p0, Lorg/ksoap2/serialization/MarshalHashtable$ItemSoapObject;->h:Ljava/util/Hashtable;

    #@18
    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    goto :goto_0

    #@1c
    .line 107
    .end local v0    # "resolved":Ljava/lang/Object;
    :cond_1
    const/4 v1, 0x1

    #@1d
    invoke-virtual {p0, v1}, Lorg/ksoap2/serialization/MarshalHashtable$ItemSoapObject;->getProperty(I)Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    .restart local v0    # "resolved":Ljava/lang/Object;
    goto :goto_1

    #@22
    .line 111
    :cond_2
    iget-object v1, p0, Lorg/ksoap2/serialization/MarshalHashtable$ItemSoapObject;->h:Ljava/util/Hashtable;

    #@24
    invoke-virtual {v1, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    goto :goto_0
.end method
