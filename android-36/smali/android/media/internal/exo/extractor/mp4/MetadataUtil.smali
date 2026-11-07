.class final Landroid/media/internal/exo/extractor/mp4/MetadataUtil;
.super Ljava/lang/Object;
.source "MetadataUtil.java"


# static fields
.field static final blacklist STANDARD_GENRES:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 193

    .line 82
    const-string v191, "Garage Rock"

    const-string v192, "Psybient"

    const-string v1, "Blues"

    const-string v2, "Classic Rock"

    const-string v3, "Country"

    const-string v4, "Dance"

    const-string v5, "Disco"

    const-string v6, "Funk"

    const-string v7, "Grunge"

    const-string v8, "Hip-Hop"

    const-string v9, "Jazz"

    const-string v10, "Metal"

    const-string v11, "New Age"

    const-string v12, "Oldies"

    const-string v13, "Other"

    const-string v14, "Pop"

    const-string v15, "R&B"

    const-string v16, "Rap"

    const-string v17, "Reggae"

    const-string v18, "Rock"

    const-string v19, "Techno"

    const-string v20, "Industrial"

    const-string v21, "Alternative"

    const-string v22, "Ska"

    const-string v23, "Death Metal"

    const-string v24, "Pranks"

    const-string v25, "Soundtrack"

    const-string v26, "Euro-Techno"

    const-string v27, "Ambient"

    const-string v28, "Trip-Hop"

    const-string v29, "Vocal"

    const-string v30, "Jazz+Funk"

    const-string v31, "Fusion"

    const-string v32, "Trance"

    const-string v33, "Classical"

    const-string v34, "Instrumental"

    const-string v35, "Acid"

    const-string v36, "House"

    const-string v37, "Game"

    const-string v38, "Sound Clip"

    const-string v39, "Gospel"

    const-string v40, "Noise"

    const-string v41, "AlternRock"

    const-string v42, "Bass"

    const-string v43, "Soul"

    const-string v44, "Punk"

    const-string v45, "Space"

    const-string v46, "Meditative"

    const-string v47, "Instrumental Pop"

    const-string v48, "Instrumental Rock"

    const-string v49, "Ethnic"

    const-string v50, "Gothic"

    const-string v51, "Darkwave"

    const-string v52, "Techno-Industrial"

    const-string v53, "Electronic"

    const-string v54, "Pop-Folk"

    const-string v55, "Eurodance"

    const-string v56, "Dream"

    const-string v57, "Southern Rock"

    const-string v58, "Comedy"

    const-string v59, "Cult"

    const-string v60, "Gangsta"

    const-string v61, "Top 40"

    const-string v62, "Christian Rap"

    const-string v63, "Pop/Funk"

    const-string v64, "Jungle"

    const-string v65, "Native American"

    const-string v66, "Cabaret"

    const-string v67, "New Wave"

    const-string v68, "Psychadelic"

    const-string v69, "Rave"

    const-string v70, "Showtunes"

    const-string v71, "Trailer"

    const-string v72, "Lo-Fi"

    const-string v73, "Tribal"

    const-string v74, "Acid Punk"

    const-string v75, "Acid Jazz"

    const-string v76, "Polka"

    const-string v77, "Retro"

    const-string v78, "Musical"

    const-string v79, "Rock & Roll"

    const-string v80, "Hard Rock"

    const-string v81, "Folk"

    const-string v82, "Folk-Rock"

    const-string v83, "National Folk"

    const-string v84, "Swing"

    const-string v85, "Fast Fusion"

    const-string v86, "Bebob"

    const-string v87, "Latin"

    const-string v88, "Revival"

    const-string v89, "Celtic"

    const-string v90, "Bluegrass"

    const-string v91, "Avantgarde"

    const-string v92, "Gothic Rock"

    const-string v93, "Progressive Rock"

    const-string v94, "Psychedelic Rock"

    const-string v95, "Symphonic Rock"

    const-string v96, "Slow Rock"

    const-string v97, "Big Band"

    const-string v98, "Chorus"

    const-string v99, "Easy Listening"

    const-string v100, "Acoustic"

    const-string v101, "Humour"

    const-string v102, "Speech"

    const-string v103, "Chanson"

    const-string v104, "Opera"

    const-string v105, "Chamber Music"

    const-string v106, "Sonata"

    const-string v107, "Symphony"

    const-string v108, "Booty Bass"

    const-string v109, "Primus"

    const-string v110, "Porn Groove"

    const-string v111, "Satire"

    const-string v112, "Slow Jam"

    const-string v113, "Club"

    const-string v114, "Tango"

    const-string v115, "Samba"

    const-string v116, "Folklore"

    const-string v117, "Ballad"

    const-string v118, "Power Ballad"

    const-string v119, "Rhythmic Soul"

    const-string v120, "Freestyle"

    const-string v121, "Duet"

    const-string v122, "Punk Rock"

    const-string v123, "Drum Solo"

    const-string v124, "A capella"

    const-string v125, "Euro-House"

    const-string v126, "Dance Hall"

    const-string v127, "Goa"

    const-string v128, "Drum & Bass"

    const-string v129, "Club-House"

    const-string v130, "Hardcore"

    const-string v131, "Terror"

    const-string v132, "Indie"

    const-string v133, "BritPop"

    const-string v134, "Afro-Punk"

    const-string v135, "Polsk Punk"

    const-string v136, "Beat"

    const-string v137, "Christian Gangsta Rap"

    const-string v138, "Heavy Metal"

    const-string v139, "Black Metal"

    const-string v140, "Crossover"

    const-string v141, "Contemporary Christian"

    const-string v142, "Christian Rock"

    const-string v143, "Merengue"

    const-string v144, "Salsa"

    const-string v145, "Thrash Metal"

    const-string v146, "Anime"

    const-string v147, "Jpop"

    const-string v148, "Synthpop"

    const-string v149, "Abstract"

    const-string v150, "Art Rock"

    const-string v151, "Baroque"

    const-string v152, "Bhangra"

    const-string v153, "Big beat"

    const-string v154, "Breakbeat"

    const-string v155, "Chillout"

    const-string v156, "Downtempo"

    const-string v157, "Dub"

    const-string v158, "EBM"

    const-string v159, "Eclectic"

    const-string v160, "Electro"

    const-string v161, "Electroclash"

    const-string v162, "Emo"

    const-string v163, "Experimental"

    const-string v164, "Garage"

    const-string v165, "Global"

    const-string v166, "IDM"

    const-string v167, "Illbient"

    const-string v168, "Industro-Goth"

    const-string v169, "Jam Band"

    const-string v170, "Krautrock"

    const-string v171, "Leftfield"

    const-string v172, "Lounge"

    const-string v173, "Math Rock"

    const-string v174, "New Romantic"

    const-string v175, "Nu-Breakz"

    const-string v176, "Post-Punk"

    const-string v177, "Post-Rock"

    const-string v178, "Psytrance"

    const-string v179, "Shoegaze"

    const-string v180, "Space Rock"

    const-string v181, "Trop Rock"

    const-string v182, "World Music"

    const-string v183, "Neoclassical"

    const-string v184, "Audiobook"

    const-string v185, "Audio theatre"

    const-string v186, "Neue Deutsche Welle"

    const-string v187, "Podcast"

    const-string v188, "Indie-Rock"

    const-string v189, "G-Funk"

    const-string v190, "Dubstep"

    filled-new-array/range {v1 .. v192}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/internal/exo/extractor/mp4/MetadataUtil;->STANDARD_GENRES:[Ljava/lang/String;

    return-void
.end method

.method private static blacklist parseCommentAttribute(ILandroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/metadata/id3/CommentFrame;
    .registers 5

    .line 463
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 464
    invoke-virtual {p1}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v1

    const v2, 0x64617461

    if-ne v1, v2, :cond_20

    const/16 p0, 0x8

    .line 466
    invoke-virtual {p1, p0}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v0, v0, -0x10

    .line 467
    invoke-virtual {p1, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object p0

    .line 468
    new-instance p1, Landroid/media/internal/exo/metadata/id3/CommentFrame;

    const-string v0, "und"

    invoke-direct {p1, v0, p0, p0}, Landroid/media/internal/exo/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 470
    :cond_20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to parse comment attribute: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/media/internal/exo/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist parseCoverArt(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/metadata/id3/ApicFrame;
    .registers 6

    .line 532
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 533
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v1

    const v2, 0x64617461

    .line 534
    const-string v3, "MetadataUtil"

    const/4 v4, 0x0

    if-ne v1, v2, :cond_51

    .line 535
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 536
    invoke-static {v1}, Landroid/media/internal/exo/extractor/mp4/Atom;->parseFullAtomFlags(I)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1f

    .line 537
    const-string v2, "image/jpeg"

    goto :goto_27

    :cond_1f
    const/16 v2, 0xe

    if-ne v1, v2, :cond_26

    const-string v2, "image/png"

    goto :goto_27

    :cond_26
    move-object v2, v4

    :goto_27
    if-nez v2, :cond_3e

    .line 539
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized cover art flags: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_3e
    const/4 v1, 0x4

    .line 542
    invoke-virtual {p0, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v0, v0, -0x10

    .line 543
    new-array v1, v0, [B

    const/4 v3, 0x0

    .line 544
    invoke-virtual {p0, v1, v3, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 545
    new-instance p0, Landroid/media/internal/exo/metadata/id3/ApicFrame;

    const/4 v0, 0x3

    invoke-direct {p0, v2, v4, v0, v1}, Landroid/media/internal/exo/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object p0

    .line 551
    :cond_51
    const-string p0, "Failed to parse cover art attribute"

    invoke-static {v3, p0}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4
.end method

.method public static blacklist parseIlstElement(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/metadata/Metadata$Entry;
    .registers 6

    .line 349
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 350
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v1

    add-int/2addr v0, v1

    .line 351
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v1

    shr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xa9

    if-eq v2, v3, :cond_119

    const/16 v3, 0xfd

    if-ne v2, v3, :cond_1b

    goto/16 :goto_119

    :cond_1b
    const v2, 0x676e7265

    if-ne v1, v2, :cond_2b

    .line 378
    :try_start_20
    invoke-static {p0}, Landroid/media/internal/exo/extractor/mp4/MetadataUtil;->parseStandardGenreAttribute(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_28

    .line 415
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :catchall_28
    move-exception v1

    goto/16 :goto_1de

    :cond_2b
    const v2, 0x6469736b

    if-ne v1, v2, :cond_3a

    .line 380
    :try_start_30
    const-string v2, "TPOS"

    invoke-static {v1, v2, p0}, Landroid/media/internal/exo/extractor/mp4/MetadataUtil;->parseIndexAndCountAttribute(ILjava/lang/String;Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_28

    .line 415
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_3a
    const v2, 0x74726b6e

    if-ne v1, v2, :cond_49

    .line 382
    :try_start_3f
    const-string v2, "TRCK"

    invoke-static {v1, v2, p0}, Landroid/media/internal/exo/extractor/mp4/MetadataUtil;->parseIndexAndCountAttribute(ILjava/lang/String;Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_28

    .line 415
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_49
    const v2, 0x746d706f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_5a

    .line 384
    :try_start_50
    const-string v2, "TBPM"

    invoke-static {v1, v2, p0, v4, v3}, Landroid/media/internal/exo/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Landroid/media/internal/exo/util/ParsableByteArray;ZZ)Landroid/media/internal/exo/metadata/id3/Id3Frame;

    move-result-object v1
    :try_end_56
    .catchall {:try_start_50 .. :try_end_56} :catchall_28

    .line 415
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_5a
    const v2, 0x6370696c

    if-ne v1, v2, :cond_69

    .line 386
    :try_start_5f
    const-string v2, "TCMP"

    invoke-static {v1, v2, p0, v4, v4}, Landroid/media/internal/exo/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Landroid/media/internal/exo/util/ParsableByteArray;ZZ)Landroid/media/internal/exo/metadata/id3/Id3Frame;

    move-result-object v1
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_28

    .line 415
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_69
    const v2, 0x636f7672

    if-ne v1, v2, :cond_76

    .line 388
    :try_start_6e
    invoke-static {p0}, Landroid/media/internal/exo/extractor/mp4/MetadataUtil;->parseCoverArt(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/metadata/id3/ApicFrame;

    move-result-object v1
    :try_end_72
    .catchall {:try_start_6e .. :try_end_72} :catchall_28

    .line 415
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_76
    const v2, 0x61415254

    if-ne v1, v2, :cond_85

    .line 390
    :try_start_7b
    const-string v2, "TPE2"

    invoke-static {v1, v2, p0}, Landroid/media/internal/exo/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_81
    .catchall {:try_start_7b .. :try_end_81} :catchall_28

    .line 415
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_85
    const v2, 0x736f6e6d

    if-ne v1, v2, :cond_94

    .line 392
    :try_start_8a
    const-string v2, "TSOT"

    invoke-static {v1, v2, p0}, Landroid/media/internal/exo/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_90
    .catchall {:try_start_8a .. :try_end_90} :catchall_28

    .line 415
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_94
    const v2, 0x736f616c

    if-ne v1, v2, :cond_a3

    .line 394
    :try_start_99
    const-string v2, "TSO2"

    invoke-static {v1, v2, p0}, Landroid/media/internal/exo/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_9f
    .catchall {:try_start_99 .. :try_end_9f} :catchall_28

    .line 415
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_a3
    const v2, 0x736f6172

    if-ne v1, v2, :cond_b2

    .line 396
    :try_start_a8
    const-string v2, "TSOA"

    invoke-static {v1, v2, p0}, Landroid/media/internal/exo/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_ae
    .catchall {:try_start_a8 .. :try_end_ae} :catchall_28

    .line 415
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_b2
    const v2, 0x736f6161

    if-ne v1, v2, :cond_c1

    .line 398
    :try_start_b7
    const-string v2, "TSOP"

    invoke-static {v1, v2, p0}, Landroid/media/internal/exo/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_bd
    .catchall {:try_start_b7 .. :try_end_bd} :catchall_28

    .line 415
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_c1
    const v2, 0x736f636f

    if-ne v1, v2, :cond_d0

    .line 400
    :try_start_c6
    const-string v2, "TSOC"

    invoke-static {v1, v2, p0}, Landroid/media/internal/exo/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_cc
    .catchall {:try_start_c6 .. :try_end_cc} :catchall_28

    .line 415
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_d0
    const v2, 0x72746e67

    if-ne v1, v2, :cond_df

    .line 402
    :try_start_d5
    const-string v2, "ITUNESADVISORY"

    invoke-static {v1, v2, p0, v3, v3}, Landroid/media/internal/exo/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Landroid/media/internal/exo/util/ParsableByteArray;ZZ)Landroid/media/internal/exo/metadata/id3/Id3Frame;

    move-result-object v1
    :try_end_db
    .catchall {:try_start_d5 .. :try_end_db} :catchall_28

    .line 415
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_df
    const v2, 0x70676170

    if-ne v1, v2, :cond_ee

    .line 404
    :try_start_e4
    const-string v2, "ITUNESGAPLESS"

    invoke-static {v1, v2, p0, v3, v4}, Landroid/media/internal/exo/extractor/mp4/MetadataUtil;->parseUint8Attribute(ILjava/lang/String;Landroid/media/internal/exo/util/ParsableByteArray;ZZ)Landroid/media/internal/exo/metadata/id3/Id3Frame;

    move-result-object v1
    :try_end_ea
    .catchall {:try_start_e4 .. :try_end_ea} :catchall_28

    .line 415
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_ee
    const v2, 0x736f736e

    if-ne v1, v2, :cond_fd

    .line 406
    :try_start_f3
    const-string v2, "TVSHOWSORT"

    invoke-static {v1, v2, p0}, Landroid/media/internal/exo/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_f9
    .catchall {:try_start_f3 .. :try_end_f9} :catchall_28

    .line 415
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_fd
    const v2, 0x74767368

    if-ne v1, v2, :cond_10c

    .line 408
    :try_start_102
    const-string v2, "TVSHOW"

    invoke-static {v1, v2, p0}, Landroid/media/internal/exo/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_108
    .catchall {:try_start_102 .. :try_end_108} :catchall_28

    .line 415
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_10c
    const v2, 0x2d2d2d2d

    if-ne v1, v2, :cond_1ab

    .line 410
    :try_start_111
    invoke-static {p0, v0}, Landroid/media/internal/exo/extractor/mp4/MetadataUtil;->parseInternalAttribute(Landroid/media/internal/exo/util/ParsableByteArray;I)Landroid/media/internal/exo/metadata/id3/Id3Frame;

    move-result-object v1
    :try_end_115
    .catchall {:try_start_111 .. :try_end_115} :catchall_28

    .line 415
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_119
    :goto_119
    const v2, 0xffffff

    and-int/2addr v2, v1

    const v3, 0x636d74

    if-ne v2, v3, :cond_12a

    .line 357
    :try_start_122
    invoke-static {v1, p0}, Landroid/media/internal/exo/extractor/mp4/MetadataUtil;->parseCommentAttribute(ILandroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/metadata/id3/CommentFrame;

    move-result-object v1
    :try_end_126
    .catchall {:try_start_122 .. :try_end_126} :catchall_28

    .line 415
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_12a
    const v3, 0x6e616d

    if-eq v2, v3, :cond_1d4

    const v3, 0x74726b

    if-ne v2, v3, :cond_136

    goto/16 :goto_1d4

    :cond_136
    const v3, 0x636f6d

    if-eq v2, v3, :cond_1ca

    const v3, 0x777274

    if-ne v2, v3, :cond_142

    goto/16 :goto_1ca

    :cond_142
    const v3, 0x646179

    if-ne v2, v3, :cond_151

    .line 363
    :try_start_147
    const-string v2, "TDRC"

    invoke-static {v1, v2, p0}, Landroid/media/internal/exo/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_14d
    .catchall {:try_start_147 .. :try_end_14d} :catchall_28

    .line 415
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_151
    const v3, 0x415254

    if-ne v2, v3, :cond_160

    .line 365
    :try_start_156
    const-string v2, "TPE1"

    invoke-static {v1, v2, p0}, Landroid/media/internal/exo/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_15c
    .catchall {:try_start_156 .. :try_end_15c} :catchall_28

    .line 415
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_160
    const v3, 0x746f6f

    if-ne v2, v3, :cond_16f

    .line 367
    :try_start_165
    const-string v2, "TSSE"

    invoke-static {v1, v2, p0}, Landroid/media/internal/exo/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_16b
    .catchall {:try_start_165 .. :try_end_16b} :catchall_28

    .line 415
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_16f
    const v3, 0x616c62

    if-ne v2, v3, :cond_17e

    .line 369
    :try_start_174
    const-string v2, "TALB"

    invoke-static {v1, v2, p0}, Landroid/media/internal/exo/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_17a
    .catchall {:try_start_174 .. :try_end_17a} :catchall_28

    .line 415
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_17e
    const v3, 0x6c7972

    if-ne v2, v3, :cond_18d

    .line 371
    :try_start_183
    const-string v2, "USLT"

    invoke-static {v1, v2, p0}, Landroid/media/internal/exo/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_189
    .catchall {:try_start_183 .. :try_end_189} :catchall_28

    .line 415
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_18d
    const v3, 0x67656e

    if-ne v2, v3, :cond_19c

    .line 373
    :try_start_192
    const-string v2, "TCON"

    invoke-static {v1, v2, p0}, Landroid/media/internal/exo/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_198
    .catchall {:try_start_192 .. :try_end_198} :catchall_28

    .line 415
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :cond_19c
    const v3, 0x677270

    if-ne v2, v3, :cond_1ab

    .line 375
    :try_start_1a1
    const-string v2, "TIT1"

    invoke-static {v1, v2, p0}, Landroid/media/internal/exo/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_1a7
    .catchall {:try_start_1a1 .. :try_end_1a7} :catchall_28

    .line 415
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    .line 412
    :cond_1ab
    :try_start_1ab
    const-string v2, "MetadataUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipped unknown metadata entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/media/internal/exo/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/media/internal/exo/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c5
    .catchall {:try_start_1ab .. :try_end_1c5} :catchall_28

    .line 415
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    const/4 p0, 0x0

    return-object p0

    .line 361
    :cond_1ca
    :goto_1ca
    :try_start_1ca
    const-string v2, "TCOM"

    invoke-static {v1, v2, p0}, Landroid/media/internal/exo/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_1d0
    .catchall {:try_start_1ca .. :try_end_1d0} :catchall_28

    .line 415
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    .line 359
    :cond_1d4
    :goto_1d4
    :try_start_1d4
    const-string v2, "TIT2"

    invoke-static {v1, v2, p0}, Landroid/media/internal/exo/extractor/mp4/MetadataUtil;->parseTextAttribute(ILjava/lang/String;Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/metadata/id3/TextInformationFrame;

    move-result-object v1
    :try_end_1da
    .catchall {:try_start_1d4 .. :try_end_1da} :catchall_28

    .line 415
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    return-object v1

    :goto_1de
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    .line 416
    throw v1
.end method

.method private static blacklist parseIndexAndCountAttribute(ILjava/lang/String;Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/metadata/id3/TextInformationFrame;
    .registers 7

    .line 497
    invoke-virtual {p2}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 498
    invoke-virtual {p2}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v1

    const v2, 0x64617461

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4e

    const/16 v1, 0x16

    if-lt v0, v1, :cond_4e

    const/16 v0, 0xa

    .line 500
    invoke-virtual {p2, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 501
    invoke-virtual {p2}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    if-lez v0, :cond_4e

    .line 503
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 504
    invoke-virtual {p2}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedShort()I

    move-result p2

    if-lez p2, :cond_48

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 508
    :cond_48
    new-instance p2, Landroid/media/internal/exo/metadata/id3/TextInformationFrame;

    invoke-direct {p2, p1, v3, p0}, Landroid/media/internal/exo/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 511
    :cond_4e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to parse index/count attribute: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/media/internal/exo/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private static blacklist parseInternalAttribute(Landroid/media/internal/exo/util/ParsableByteArray;I)Landroid/media/internal/exo/metadata/id3/Id3Frame;
    .registers 12

    const/4 v0, 0x0

    const/4 v1, -0x1

    move-object v2, v0

    move-object v3, v2

    move v4, v1

    move v5, v4

    .line 561
    :goto_6
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v6

    if-ge v6, p1, :cond_41

    .line 562
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v6

    .line 563
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v7

    .line 564
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v8

    const/4 v9, 0x4

    .line 565
    invoke-virtual {p0, v9}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    const v9, 0x6d65616e

    if-ne v8, v9, :cond_28

    add-int/lit8 v7, v7, -0xc

    .line 567
    invoke-virtual {p0, v7}, Landroid/media/internal/exo/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_28
    const v9, 0x6e616d65

    if-ne v8, v9, :cond_34

    add-int/lit8 v7, v7, -0xc

    .line 569
    invoke-virtual {p0, v7}, Landroid/media/internal/exo/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_34
    const v9, 0x64617461

    if-ne v8, v9, :cond_3b

    move v4, v6

    move v5, v7

    :cond_3b
    add-int/lit8 v7, v7, -0xc

    .line 575
    invoke-virtual {p0, v7}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    goto :goto_6

    :cond_41
    if-eqz v2, :cond_5b

    if-eqz v3, :cond_5b

    if-ne v4, v1, :cond_48

    goto :goto_5b

    .line 581
    :cond_48
    invoke-virtual {p0, v4}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    const/16 p1, 0x10

    .line 582
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    sub-int/2addr v5, p1

    .line 583
    invoke-virtual {p0, v5}, Landroid/media/internal/exo/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object p0

    .line 584
    new-instance p1, Landroid/media/internal/exo/metadata/id3/InternalFrame;

    invoke-direct {p1, v2, v3, p0}, Landroid/media/internal/exo/metadata/id3/InternalFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_5b
    :goto_5b
    return-object v0
.end method

.method public static blacklist parseMdtaMetadataEntryFromIlst(Landroid/media/internal/exo/util/ParsableByteArray;ILjava/lang/String;)Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;
    .registers 7

    .line 431
    :goto_0
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->getPosition()I

    move-result v0

    if-ge v0, p1, :cond_2e

    .line 432
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v1

    .line 433
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v2

    const v3, 0x64617461

    if-ne v2, v3, :cond_29

    .line 435
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result p1

    .line 436
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v0

    add-int/lit8 v1, v1, -0x10

    .line 438
    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 439
    invoke-virtual {p0, v2, v3, v1}, Landroid/media/internal/exo/util/ParsableByteArray;->readBytes([BII)V

    .line 440
    new-instance p0, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;

    invoke-direct {p0, p2, v2, v0, p1}, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;-><init>(Ljava/lang/String;[BII)V

    return-object p0

    :cond_29
    add-int/2addr v0, v1

    .line 442
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->setPosition(I)V

    goto :goto_0

    :cond_2e
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist parseStandardGenreAttribute(Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/metadata/id3/TextInformationFrame;
    .registers 4

    .line 517
    invoke-static {p0}, Landroid/media/internal/exo/extractor/mp4/MetadataUtil;->parseUint8AttributeValue(Landroid/media/internal/exo/util/ParsableByteArray;)I

    move-result p0

    const/4 v0, 0x0

    if-lez p0, :cond_11

    .line 520
    sget-object v1, Landroid/media/internal/exo/extractor/mp4/MetadataUtil;->STANDARD_GENRES:[Ljava/lang/String;

    array-length v2, v1

    if-gt p0, v2, :cond_11

    add-int/lit8 p0, p0, -0x1

    .line 521
    aget-object p0, v1, p0

    goto :goto_12

    :cond_11
    move-object p0, v0

    :goto_12
    if-eqz p0, :cond_1c

    .line 524
    new-instance v1, Landroid/media/internal/exo/metadata/id3/TextInformationFrame;

    const-string v2, "TCON"

    invoke-direct {v1, v2, v0, p0}, Landroid/media/internal/exo/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 526
    :cond_1c
    const-string p0, "MetadataUtil"

    const-string v1, "Failed to parse standard genre code"

    invoke-static {p0, v1}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static blacklist parseTextAttribute(ILjava/lang/String;Landroid/media/internal/exo/util/ParsableByteArray;)Landroid/media/internal/exo/metadata/id3/TextInformationFrame;
    .registers 7

    .line 450
    invoke-virtual {p2}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v0

    .line 451
    invoke-virtual {p2}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v1

    const v2, 0x64617461

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1f

    const/16 p0, 0x8

    .line 453
    invoke-virtual {p2, p0}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v0, v0, -0x10

    .line 454
    invoke-virtual {p2, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->readNullTerminatedString(I)Ljava/lang/String;

    move-result-object p0

    .line 455
    new-instance p2, Landroid/media/internal/exo/metadata/id3/TextInformationFrame;

    invoke-direct {p2, p1, v3, p0}, Landroid/media/internal/exo/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 457
    :cond_1f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to parse text attribute: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/media/internal/exo/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method private static blacklist parseUint8Attribute(ILjava/lang/String;Landroid/media/internal/exo/util/ParsableByteArray;ZZ)Landroid/media/internal/exo/metadata/id3/Id3Frame;
    .registers 5

    .line 481
    invoke-static {p2}, Landroid/media/internal/exo/extractor/mp4/MetadataUtil;->parseUint8AttributeValue(Landroid/media/internal/exo/util/ParsableByteArray;)I

    move-result p2

    if-eqz p4, :cond_b

    const/4 p4, 0x1

    .line 483
    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :cond_b
    const/4 p4, 0x0

    if-ltz p2, :cond_26

    if-eqz p3, :cond_1a

    .line 487
    new-instance p0, Landroid/media/internal/exo/metadata/id3/TextInformationFrame;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p4, p2}, Landroid/media/internal/exo/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 488
    :cond_1a
    new-instance p0, Landroid/media/internal/exo/metadata/id3/CommentFrame;

    const-string p3, "und"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3, p1, p2}, Landroid/media/internal/exo/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 490
    :cond_26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to parse uint8 attribute: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/media/internal/exo/extractor/mp4/Atom;->getAtomTypeString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MetadataUtil"

    invoke-static {p1, p0}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p4
.end method

.method private static blacklist parseUint8AttributeValue(Landroid/media/internal/exo/util/ParsableByteArray;)I
    .registers 3

    const/4 v0, 0x4

    .line 588
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 589
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readInt()I

    move-result v0

    const v1, 0x64617461

    if-ne v0, v1, :cond_17

    const/16 v0, 0x8

    .line 591
    invoke-virtual {p0, v0}, Landroid/media/internal/exo/util/ParsableByteArray;->skipBytes(I)V

    .line 592
    invoke-virtual {p0}, Landroid/media/internal/exo/util/ParsableByteArray;->readUnsignedByte()I

    move-result p0

    return p0

    .line 594
    :cond_17
    const-string p0, "MetadataUtil"

    const-string v0, "Failed to parse uint8 attribute value"

    invoke-static {p0, v0}, Landroid/media/internal/exo/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static blacklist setFormatGaplessInfo(ILandroid/media/internal/exo/extractor/GaplessInfoHolder;Landroid/media/internal/exo/Format$Builder;)V
    .registers 4

    const/4 v0, 0x1

    if-ne p0, v0, :cond_14

    .line 331
    invoke-virtual {p1}, Landroid/media/internal/exo/extractor/GaplessInfoHolder;->hasGaplessInfo()Z

    move-result p0

    if-eqz p0, :cond_14

    .line 332
    iget p0, p1, Landroid/media/internal/exo/extractor/GaplessInfoHolder;->encoderDelay:I

    .line 333
    invoke-virtual {p2, p0}, Landroid/media/internal/exo/Format$Builder;->setEncoderDelay(I)Landroid/media/internal/exo/Format$Builder;

    move-result-object p0

    iget p1, p1, Landroid/media/internal/exo/extractor/GaplessInfoHolder;->encoderPadding:I

    .line 334
    invoke-virtual {p0, p1}, Landroid/media/internal/exo/Format$Builder;->setEncoderPadding(I)Landroid/media/internal/exo/Format$Builder;

    :cond_14
    return-void
.end method

.method public static varargs blacklist setFormatMetadata(ILandroid/media/internal/exo/metadata/Metadata;Landroid/media/internal/exo/metadata/Metadata;Landroid/media/internal/exo/Format$Builder;[Landroid/media/internal/exo/metadata/Metadata;)V
    .registers 10

    .line 294
    new-instance v0, Landroid/media/internal/exo/metadata/Metadata;

    const/4 v1, 0x0

    new-array v2, v1, [Landroid/media/internal/exo/metadata/Metadata$Entry;

    invoke-direct {v0, v2}, Landroid/media/internal/exo/metadata/Metadata;-><init>([Landroid/media/internal/exo/metadata/Metadata$Entry;)V

    const/4 v2, 0x1

    if-ne p0, v2, :cond_e

    if-eqz p1, :cond_3b

    goto :goto_3c

    :cond_e
    const/4 p1, 0x2

    if-ne p0, p1, :cond_3b

    if-eqz p2, :cond_3b

    move p0, v1

    .line 304
    :goto_14
    invoke-virtual {p2}, Landroid/media/internal/exo/metadata/Metadata;->length()I

    move-result p1

    if-ge p0, p1, :cond_3b

    .line 305
    invoke-virtual {p2, p0}, Landroid/media/internal/exo/metadata/Metadata;->get(I)Landroid/media/internal/exo/metadata/Metadata$Entry;

    move-result-object p1

    .line 306
    instance-of v3, p1, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;

    if-eqz v3, :cond_39

    .line 307
    check-cast p1, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;

    .line 308
    iget-object v3, p1, Landroid/media/internal/exo/metadata/mp4/MdtaMetadataEntry;->key:Ljava/lang/String;

    const-string v4, "com.android.capture.fps"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 309
    new-instance p0, Landroid/media/internal/exo/metadata/Metadata;

    new-array p2, v2, [Landroid/media/internal/exo/metadata/Metadata$Entry;

    aput-object p1, p2, v1

    invoke-direct {p0, p2}, Landroid/media/internal/exo/metadata/Metadata;-><init>([Landroid/media/internal/exo/metadata/Metadata$Entry;)V

    move-object p1, p0

    goto :goto_3c

    :cond_39
    add-int/2addr p0, v2

    goto :goto_14

    :cond_3b
    move-object p1, v0

    .line 317
    :goto_3c
    array-length p0, p4

    :goto_3d
    if-ge v1, p0, :cond_47

    aget-object p2, p4, v1

    .line 318
    invoke-virtual {p1, p2}, Landroid/media/internal/exo/metadata/Metadata;->copyWithAppendedEntriesFrom(Landroid/media/internal/exo/metadata/Metadata;)Landroid/media/internal/exo/metadata/Metadata;

    move-result-object p1

    add-int/2addr v1, v2

    goto :goto_3d

    .line 321
    :cond_47
    invoke-virtual {p1}, Landroid/media/internal/exo/metadata/Metadata;->length()I

    move-result p0

    if-lez p0, :cond_50

    .line 322
    invoke-virtual {p3, p1}, Landroid/media/internal/exo/Format$Builder;->setMetadata(Landroid/media/internal/exo/metadata/Metadata;)Landroid/media/internal/exo/Format$Builder;

    :cond_50
    return-void
.end method
